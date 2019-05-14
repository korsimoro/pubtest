import click
import sqlite3 as db
import yaml
import os
import sqliteschema
from . import *

@cli.command(name="rwot-read-docs")
@click.option("--format","format",
    type=click.Choice(['csv','elasticsearch','excel','htm','html','javascript','js','json','json_lines','jsonl','latex_matrix','latex_table','ldjson','ltsv','markdown','md','mediawiki','ndjson','null','numpy','pandas','py','python','rst','rst_csv','rst_csv_table','rst_grid','rst_grid_table','rst_simple','rst_simple_table','space_aligned','sqlite','toml','tsv','unicode']),
    default="markdown"
)
@click.pass_obj
def rwot_read_docs(basedir,format):
    """Dump schema"""
    dataPath = os.path.join(basedir,"docs","_data")
    basePath = os.path.join(dataPath,"sqlite")
    verbosity_level=6
    for elt in os.listdir(basePath):
        dirname = os.path.join(basePath,elt)
        if os.path.isdir(dirname):
            db_path = os.path.join(dirname,"database.sqlite")
            extractor = sqliteschema.SQLiteSchemaExtractor(db_path)
            schema_path = os.path.join(dirname,"schema."+format)
            with open(schema_path,"w") as fout:
                print(extractor.dumps(format,verbosity_level))
