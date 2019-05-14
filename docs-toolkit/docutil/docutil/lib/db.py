from . import data_dir,value_of
from simplesqlite import SimpleSQLite
import os
import sqliteschema
import tabledata
import pytablewriter
import yaml


def dict_factory(cursor, row):
    d = {}
    for idx, col in enumerate(cursor.description):
        d[col[0]] = row[idx]
    return d

class Table(object):
    def __init__(self,db,con,tablename):
        self.db = db
        self.con = con
        self.tablename = tablename

    @property
    def schema(self):
        return self.con.schema_extractor(fetch_table_schema(self.tablename))

    @property
    def tabledata(self):
        return self.con.select_as_tabledata(self.tablename)

class DatabaseUtil(object):
    def __init__(self,db):
        self.db = db
        self.con = None

    @property
    def tables(self):
        for t in self.db.tables:
            yield Table(self.db,self.con,t)

    def __enter__(self):
        if self.con != None:
            print("Warning:connection nesting",self,self.dbkey)
        self.con = SimpleSQLite(self.db.path,"a",profile=True)
        return self

    def __exit__(self, exc_type, exc, traceback):
        if self.con == None:
            print("Warning:connection not set",self,exc_type,exc,self.dbkey)
        else:
            self.con.close()
        self.db = None
        self.con = None


class Database(object):

    def __init__(self,dbdir,outdir):
        obj=dict()
        descriptor = os.path.join(dbdir,"descriptor.yml")
        with open(descriptor,"r") as fin:
            local = dict()
            local['dir']=dbdir
            local['outdir']=outdir
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

    def outputfile(self,path):
        outdir = self.value_of('local.outdir')
        if not os.path.isdir(outdir):
            os.makedirs(outdir,exist_ok=True)

        fullpath = os.path.join(outdir,path)
        #print("FP:",fullpath)
        return open(fullpath,"w")

    def value_of(self, key):
        return value_of(self.__dict__,key)

    @property
    def tables(self):
        return list(self.value_of('local.schema').keys())

    @property
    def path(self):
        return self.value_of('local.databasefile')

    @property
    def access(self):
        return DatabaseUtil(self)



class DatabaseConfiguration(object):

    def __init__(self,basedir):
        sqliteBase = data_dir(basedir,".sqlite")
        self.dbs=dict()
        for elt in os.listdir(sqliteBase):
            dbPath = os.path.join(sqliteBase,elt)
            dbDataPath = data_dir(basedir,elt)
            if os.path.isdir(dbPath):
                descriptor = os.path.join(dbPath,"descriptor.yml")
                if os.path.isfile(descriptor):
                    db = Database(dbPath,dbDataPath)
                    self.dbs[db.dbkey] = db

    def filter_db_list(self,options):
        if options == None or len(options) == 0:
            for db in self.dbs.values():
                yield db
        else:
            for opt in options:
                if opt in self.dbs:
                    yield self.dbs[opt]
                else:
                    print("Error - can not find db with dbkey=%s, options are" % opt,list(self.dbs.keys()))
