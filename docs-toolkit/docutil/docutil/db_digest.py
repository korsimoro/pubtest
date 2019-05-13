import click
import sqlite3 as db
import yaml
import os
import sqliteschema
from . import *
import pytablewriter
import tabledata

@cli.command(name="db-digest")
@click.option("--db","db_",
    required=False,
    multiple=True,
    default=None
)
@click.option("--format","formats",
    type=click.Choice(['csv','elasticsearch','excel','htm','html','javascript','js','json','json_lines','jsonl','latex_matrix','latex_table','ldjson','ltsv','markdown','md','mediawiki','ndjson','null','numpy','pandas','py','python','rst','rst_csv','rst_csv_table','rst_grid','rst_grid_table','rst_simple','rst_simple_table','space_aligned','sqlite','toml','tsv','unicode']),
    multiple=True,
    default=["csv","js","ldjson","html","markdown"]
)
@click.pass_obj
def db_digest(app,db_,formats):
    """Produce all schema files generatable from database"""
    verbosity_level = 6
    for db in app.dbconfig.filter_db_list(db_):
        with db.access as DBX:
            for table in DBX.tables:
                print("%s:%s" % (db.dbkey,table.tablename))
                try:
                    td = table.tabledata

                    output_file_name = table.tablename + ".yml"
                    with db.outputfile(output_file_name) as outfile:
                        data = dictlist_from_tabledata(td)
                        yaml.dump(data, outfile, default_flow_style=False)
                        print("%s:%s - %s" % (db.dbkey,table.tablename,'yml'))

                    for format in formats:
                        output_file_name = table.tablename + "." + format
                        with db.outputfile(output_file_name) as outfile:
                            writer = pytablewriter.TableWriterFactory.create_from_format_name(format)
                            writer.from_tabledata(td)
                            writer.stream = outfile
                            writer.write_table()
                            print("%s:%s - %s" % (db.dbkey,table.tablename,format))
                except Exception as E:
                    print("Digest Exception :%s" % E,table,DBX)
                    #raise E
