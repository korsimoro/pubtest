import click
import sqlite3 as db
import yaml
import os
import sqliteschema
from . import *

import toml
import json
@cli.command(name="toml")
@click.option("--format","format",
    type=click.Choice(['csv','elasticsearch','excel','htm','html','javascript','js','json','json_lines','jsonl','latex_matrix','latex_table','ldjson','ltsv','markdown','md','mediawiki','ndjson','null','numpy','pandas','py','python','rst','rst_csv','rst_csv_table','rst_grid','rst_grid_table','rst_simple','rst_simple_table','space_aligned','sqlite','toml','tsv','unicode']),
    default="markdown"
)
@click.option("--in","in_",
    type=click.File("r"),
    help="file to load",
    required=True
)
@click.pass_obj
def db_schema_table(basedir,format,in_):
    data = toml.loads(in_.read())
    print(json.dumps(data,sort_keys=True,indent=2))
