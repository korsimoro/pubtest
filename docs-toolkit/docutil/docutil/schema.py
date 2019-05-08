import click
import yaml
import os
import sqliteschema
import tabledata
from . import *

@cli.command(name="db-schema-digest")
@click.option("--db","db_",
    required=False,
    multiple=True,
    default=None
)
@click.pass_obj
def db_schema_digest(app,db_):
    """Produce all schema files generatable from database"""
    verbosity_level = 6
    for db in app.dbconfig.filter_db_list(db_):
        for table in db.tables:
            print("%s:%s" % (db.dbkey,table))
            s = db.value_of('local.schema.'+table)

@cli.command(name="db-schema")
@click.option("--format","format",
    type=click.Choice(['csv','elasticsearch','excel','htm','html','javascript','js','json','json_lines','jsonl','latex_matrix','latex_table','ldjson','ltsv','markdown','md','mediawiki','ndjson','null','numpy','pandas','py','python','rst','rst_csv','rst_csv_table','rst_grid','rst_grid_table','rst_simple','rst_simple_table','space_aligned','sqlite','toml','tsv','unicode']),
    default="markdown"
)
@click.option("--out","out_",
    type=click.File("w"),
    help="file to write",
    default="-",
    required=False
)
@click.option("--table","table_",
    required=False,
    help="Extract single table",
    default=None
)
@click.option("--db","db_",
    required=False,
    multiple=True,
    default=None
)
@click.pass_obj
def db_schema(app,format,out_,table_,db_):
    """Dump schema"""
    verbosity_level=6
    for db in app.dbconfig.filter_db_list(db_):
        db_path = db.value_of('local.databasefile')
        #out_.write(extractor.dumps(format,verbosity_level))
        try:
            extractor = sqliteschema.SQLiteSchemaExtractor(db_path)
            if table_:
                schema = extractor.fetch_table_schema(table_)
                out_.write(schema.dumps(format,verbosity_level))
            else:
                out_.write(extractor.dumps(format,verbosity_level))
        except Exception as E:
            print("ERROR",db_path,E)
