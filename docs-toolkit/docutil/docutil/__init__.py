import click
import sqlite3 as db
import yaml
import os
import sqliteschema
import tabledata

@click.group(name="tool")
@click.option('--dir','basedir',
    help="Base Directory (Checkout)",
    # this is relative to the tool/__init__.py file in development
    default=os.path.join(os.path.dirname(os.path.abspath(__file__)),"..","..","..")
)
@click.pass_context
def cli(ctx,basedir):
    """Simple utilities to massage data in the repo."""
    ctx.obj = basedir

if __name__ == '__main__':
    cli()

def dict_factory(cursor, row):
    d = {}
    for idx, col in enumerate(cursor.description):
        d[col[0]] = row[idx]
    return d

def value_of(data,key):
    if data == None:
        return None

    if key == None:
        return data

    split = key.split(".",1)
    probe = split[0]
    remainder = split[1] if len(split)>1 else None

    if probe in data:
        return value_of(data[probe],remainder)
    else:
        return None

def docs_dir(basedir,scope):
    return os.path.join(basedir,"docs",scope)

def data_dir(basedir,scope):
    return os.path.join(basedir,"docs-data",scope)



def list_database_paths(basedir):
    """List database paths."""
    sqliteBase = data_dir(basedir,"sqlite")
    for elt in os.listdir(sqliteBase):
        dbPath = os.path.join(sqliteBase,elt)
        if os.path.isdir(dbPath):
            yield dbPath

def database_descriptor(dbdir):
    """List database definitions."""
    if not os.path.isdir(dbdir):
        print("Warning - %s does not exist" % dbdir)
        return None

    descriptor = os.path.join(dbdir,"descriptor.yml")
    if not os.path.isfile(descriptor):
        print("Warning - %s does not exist" % descriptor)
        return None

    with open(descriptor,"r") as fin:
        local = dict()
        local['dir']=dbdir
        local['databasefile']=os.path.join(dbdir,'database.sqlite')
        schemafile = os.path.join(dbdir,'schema.sqlite')
        local['schemafile']=schemafile
        #if os.path.isfile(schemafile):
        #    with open(schemafile,"r") as fin2:
        #        local['schema'] = yaml.safe_load(fin2)

        # load and add properties
        obj = yaml.safe_load(fin)
        obj['local']=local
        return obj

def list_database_defns(basedir):
    """List database definitions."""
    for path in list_database_paths(basedir):
        yield database_descriptor(path)

def build_dbkey_map(basedir):
    result = dict()
    for db in list_database_defns(basedir):
        if db != None:
            result[db['dbkey']]=db
    return result

def filter_db_list(options,basedir):
    if options == None or len(options) == 0:
        for db in list_database_defns(basedir):
            print("FDL, db=",db)
            yield db
    m = build_dbkey_map(basedir)
    for opt in options:
        if opt in m:
            yield m[opt]
        else:
            print("Error - can not find db with dbkey=%s, options are" % opt,list(m.keys()))



def dictlist_from_tabledata(td):
    result = []
    for row in td.rows:
        obj = dict()
        index = 0
        for value in row:
            key = td.headers[index]
            index += 1
            obj[key] = value
        result.append(obj)
    return result

def tabledata_save_to_yaml(result_path,td):
    data = dictlist_from_tabledata(td)
    with open(result_path, 'w') as outfile:
        yaml.dump(data, outfile, default_flow_style=False)
        print("Updated",result_path)

def tabledata_from_dictlist(name,data):
    keys = set()
    for x in data:
        if type(x) == dict:
            for key in x.keys():
                keys.add(key)
        else:
            for key in x.__dict__.keys():
                keys.add(key)

    headers = list(keys)
    headers.sort()
    rows = []

    for obj in data:
        row_data = []
        for key in headers:
            if type(obj) == dict:
                target = obj
            else:
                target = obj.__dict__
            if key in target:
                row_data.append(target[key])
            else:
                row_data.append(None)
        rows.append(row_data)

    return tabledata.TableData(name,headers,rows)



from .db import *
from .schema import *
from .query import *
from .gitlog import *
from .toml import *
