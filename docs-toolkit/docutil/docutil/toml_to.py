import click
import sqlite3 as db
import yaml
import toml
import os
import pytablewriter
from . import *

import toml
import json
@cli.command(name="toml-to")
@click.argument("format",
    type=click.Choice(['yml','csv','elasticsearch','excel','htm','html','javascript','js','json','json_lines','jsonl','latex_matrix','latex_table','ldjson','ltsv','markdown','md','mediawiki','ndjson','null','numpy','pandas','py','python','rst','rst_csv','rst_csv_table','rst_grid','rst_grid_table','rst_simple','rst_simple_table','space_aligned','sqlite','toml','tsv','unicode']),
    default="yml"
)
@click.option("--in","in_",
    type=click.File("r"),
    help="file to load",
    required=False,
    default="-"
)
@click.option("--out","out_",
    type=click.File("w"),
    help="file to emit",
    required=False,
    default="-"
)
@click.pass_obj
def convert_toml(app,format,in_,out_):
    data = toml.loads(in_.read())
    if format == "yml":
        yaml.dump(data, out_, default_flow_style=False)
    else:
        writer = pytablewriter.TableWriterFactory.create_from_format_name(format)
        writer.from_tabledata(tabledata_from_dictlist(data))
        writer.stream = out_
        writer.write_table()
