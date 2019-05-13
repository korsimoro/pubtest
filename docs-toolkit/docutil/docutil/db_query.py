import click
import sqlite3
import yaml
import os
import sqliteschema
from . import *
import pytablewriter
import tabledata





@cli.command(name="db-query")
@click.option("--format","formats",
    type=click.Choice(['csv','elasticsearch','excel','htm','html','javascript','js','json','json_lines','jsonl','latex_matrix','latex_table','ldjson','ltsv','markdown','md','mediawiki','ndjson','null','numpy','pandas','py','python','rst','rst_csv','rst_csv_table','rst_grid','rst_grid_table','rst_simple','rst_simple_table','space_aligned','sqlite','toml','tsv','unicode']),
    multiple=True,
    default=["csv","js","ldjson","html","markdown"]
)
@click.option("--query","query_",
    required=False,
    help="Extract run list of queries",
    default=None
)
@click.option("--db","db_",
    required=False,
    multiple=True,
    default=None
)
@click.pass_obj
def query_out(app,formats,query_,db_):
    """Extract data from sqlite and place as _data."""
    verbosity_level=6
    for db in app.dbconfig.filter_db_list(db_):

        db_dir = db.value_of('local.dir')
        db_file = db.value_of('local.databasefile')
        db_key = db.dbkey
        yml_data_dir = data_dir(app.basedir,db_key)
        generated_data_dir=os.path.join(app.generated_data_base_dir,db_key)

        os.makedirs(yml_data_dir,exist_ok=True)
        os.makedirs(generated_data_dir,exist_ok=True)

        with sqlite3.connect(db_file) as conn:
            conn.row_factory = dict_factory
            for possibleQueryFile in os.listdir(db_dir):
                if possibleQueryFile.endswith(".sql"):
                    queryFilePath = os.path.join(db_dir,possibleQueryFile)
                    with open(queryFilePath,"r") as queryFile:
                        query = queryFile.read()
                        cur = conn.cursor()
                        cur.execute(query)
                        data = cur.fetchall()

                        query_name = possibleQueryFile[:-4]
                        output_file_name = query_name + ".yml"
                        result_path = os.path.join(yml_data_dir,output_file_name)
                        with open(result_path, 'w') as outfile:
                            yaml.dump(data, outfile, default_flow_style=False)
                            print("Updated",result_path)

                        td = tabledata_from_dictlist(db_key+":"+query_name,data)
                        for format in formats:
                            output_file_name = query_name + "." + format
                            result_path = os.path.join(generated_data_dir,output_file_name)
                            with open(result_path, 'w') as outfile:
                                writer = pytablewriter.TableWriterFactory.create_from_format_name(format)
                                writer.from_tabledata(td)
                                writer.stream = outfile
                                writer.write_table()
