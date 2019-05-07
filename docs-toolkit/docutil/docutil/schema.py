import click
import sqlite3 as db
import yaml
import os
import sqliteschema
import tabledata
from . import *

@cli.command(name="db-schema-digest")
@click.pass_obj
def db_schema_digest(basedir):
    """Produce all schema files generatable from database"""
    verbosity_level = 6
    for descriptor in list_database_defns(basedir):
        db_path = descriptor['dbfile']
        schemafile = descriptor['schemafile']
        extractor = sqliteschema.SQLiteSchemaExtractor(db_path)
        with open(schemafile,"w") as fout:
            try:
                fout.write(extractor.dumps("yml",verbosity_level))
            except Exception as E:
                print("Error writing",schemafile)
                print("---",E)


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
def db_schema(basedir,format,out_,table_,db_):
    """Dump schema"""
    verbosity_level=6
    for descriptor in filter_db_list(db_,basedir):
        db_path = descriptor['dbfile']
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
