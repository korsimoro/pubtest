import click
import sqlite3 as db
import yaml
import os
import sqliteschema
import tabledata
import pytablewriter

def docs_dir(basedir,scope):
    return os.path.join(basedir,"docs",scope)

def data_dir(basedir,scope):
    return os.path.join(basedir,"docs-data",scope)


def value_of(data,key):

    if key == None:
        return data

    if data == None:
        return None

    split = key.split(".",1)
    probe = split[0]
    remainder = split[1] if len(split)>1 else None

    if probe in data:
        return value_of(data[probe],remainder)
    else:
        return None


class Database(object):

    def __init__(self,dbdir):
        obj=dict()
        descriptor = os.path.join(dbdir,"descriptor.yml")
        with open(descriptor,"r") as fin:
            local = dict()
            local['dir']=dbdir
            local['databasefile']=os.path.join(dbdir,'database.sqlite')

            schemas = dict()
            schemadir = os.path.join(dbdir,'schema')
            try:
                os.makedirs(schemadir,exist_ok=True)
                local['schemadir']=schemadir
                extractor = sqliteschema.SQLiteSchemaExtractor(local['databasefile'])
                tnames = extractor.fetch_table_names()
                print("LOADING SCHEMA:",dbdir,tnames)
                for table in tnames:
                    schema = extractor.fetch_table_schema(table)
                    schemas[table] = schema
                    schemafile = os.path.join(schemadir,table+".yml")
                    with open(schemafile,"w") as outfile:
                        yaml.dump(schema.as_dict(), outfile, default_flow_style=False)
            except Exception as E:
                print("Warning - %s yields" % dbdir,E)
                #raise E
            local['schema']=schemas
            #local['schema'] = yaml.safe_load(fin2)

            # load and add properties
            obj = yaml.safe_load(fin)
            obj['local']=local
        self.__dict__=obj

    def value_of(self, key):
        return value_of(self.__dict__,key)

    @property
    def tables(self):
        return list(self.value_of('local.schema').keys())

class DatabaseConfiguration(object):

    def __init__(self,basedir):
        sqliteBase = data_dir(basedir,"sqlite")
        self.dbs=dict()
        for elt in os.listdir(sqliteBase):
            dbPath = os.path.join(sqliteBase,elt)
            if os.path.isdir(dbPath):
                descriptor = os.path.join(dbPath,"descriptor.yml")
                if os.path.isfile(descriptor):
                    db = Database(dbPath)
                    self.dbs[db.dbkey] = db

    def filter_db_list(self,options):
        if options == None or len(options) == 0:
            for db in self.dbs.values():
                yield db
        else:
            for opt in options:
                if opt in self.dbs:
                    yield m[opt]
                else:
                    print("Error - can not find db with dbkey=%s, options are" % opt,list(self.dbs.keys()))

class Application(object):

    def __init__(self,basedir):
        self.basedir = basedir
        self.dbconfig = DatabaseConfiguration(basedir)
        self.generated_data_base_dir = docs_dir(basedir,'_generated')

@click.group(name="tool")
@click.option('--dir','basedir',
    help="Base Directory (Checkout)",
    # this is relative to the tool/__init__.py file in development
    default=os.path.join(os.path.dirname(os.path.abspath(__file__)),"..","..","..")
)
@click.pass_context
def cli(ctx,basedir):
    """Simple utilities to massage data in the repo."""
    ctx.obj = Application(basedir)

if __name__ == '__main__':
    cli()




def dict_factory(cursor, row):
    d = {}
    for idx, col in enumerate(cursor.description):
        d[col[0]] = row[idx]
    return d


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
