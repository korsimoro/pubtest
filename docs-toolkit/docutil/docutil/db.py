import click
import sqlite3 as db
import yaml
import os
import sqliteschema
from . import *
import pytablewriter
import tabledata


@cli.command(name="db-list")
@click.option("--format","output_format",
    type=click.Choice(['csv','elasticsearch','excel','htm','html','javascript','js','json','json_lines','jsonl','latex_matrix','latex_table','ldjson','ltsv','markdown','md','mediawiki','ndjson','null','numpy','pandas','py','python','rst','rst_csv','rst_csv_table','rst_grid','rst_grid_table','rst_simple','rst_simple_table','space_aligned','sqlite','toml','tsv','unicode']),
    default="markdown"
)
@click.option("--out","out_",
    type=click.File("w"),
    help="file to write",
    default="-",
    required=False
)
@click.pass_obj
def db_list(app,output_format,out_):
    """List all data."""
    headers = ["name","dbkey","s-type","s-input"]
    rows = []
    for db in app.dbconfig.dbs.values():
        rows.append([
            db.value_of('name'),
            db.value_of('dbkey'),
            db.value_of('source.type'),
            db.value_of('source.input')
            ])
    td = tabledata.TableData("databases",headers,rows)
    writer = pytablewriter.TableWriterFactory.create_from_format_name(output_format)
    writer.from_tabledata(td)
    writer.stream = out_
    writer.write_table()


@cli.command(name="db-digest")
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
