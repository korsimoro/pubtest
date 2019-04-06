import click
import sqlite3 as db
import yaml
import os
import sqliteschema

@click.group(name="tool")
@click.option('--dir','basedir',
    help="Base Directory (Checkout)",
    # this is relative to the tool/__init__.py file in development
    default=os.path.join(os.path.dirname(os.path.abspath(__file__)),"..","..")
)
@click.pass_context
def cli(ctx,basedir):
    """Simple utilities to massage data in the repo."""
    ctx.obj = basedir

if __name__ == '__main__':
    cli()

def dict_factory(cursor, row):
    d = {}
    for idx, col in enumerate(cursor.description):
        d[col[0]] = row[idx]
    return d

@cli.command(name="db-to-yaml")
@click.pass_obj
def db_to_yaml(basedir):
    """Extract data from sqlite and place as _data."""
    dataPath = os.path.join(basedir,"docs","_data")
    basePath = os.path.join(dataPath,"sqlite")
    for elt in os.listdir(basePath):
        queryBase = os.path.join(basePath,elt)
        if os.path.isdir(queryBase):
            dbPath = os.path.join(queryBase,"database.sqlite")
            with db.connect(dbPath) as conn:
                conn.row_factory = dict_factory
                for possibleQueryFile in os.listdir(queryBase):
                    if possibleQueryFile.endswith(".sql"):
                        queryFilePath = os.path.join(queryBase,possibleQueryFile)
                        with open(queryFilePath,"r") as queryFile:
                            query = queryFile.read()
                            cur = conn.cursor()
                            cur.execute(query)
                            data = cur.fetchall()

                            yaml_name = elt+"_"+possibleQueryFile[:-4] + ".yml"
                            result_path = os.path.join(dataPath,yaml_name)
                            with open(result_path, 'w') as outfile:
                                yaml.dump(data, outfile, default_flow_style=False)
                                print("Updated",result_path)
from git import Repo
@cli.command(name="gitlog")
@click.option('--org','org_',
    required=True,
    help="GitHub Organization",
    default=""
)
@click.option('--repo','repo_',
    required=True,
    help="Repository Name"
)
@click.pass_obj
def gitlog(basedir,org_,repo_):
    """extract commit log from repository"""
    gitPath = os.path.join(basedir,".git/modules/toolkit/submodules",org_,repo_)
    repo = Repo(gitPath)
    log = [dict(
        authored_date=x.authored_date,
        author_tz_offset=x.author_tz_offset,
        committer=dict(
            conf_email = x.committer.conf_email,
            conf_name = x.committer.conf_name,
            email = x.committer.email,
            env_author_email  = x.committer.env_author_email,
            env_author_name = x.committer.env_author_name,
            env_committer_email = x.committer.env_committer_email,
            env_committer_name = x.committer.env_committer_name,
            name = x.committer.name
        ),
        committed_date=x.committed_date,
        committer_tz_offset=x.committer_tz_offset,
        message=x.message
        ) for x in repo.iter_commits('HEAD')]

    print(log)

import toml
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
    print(data)


@cli.command(name="db-schema-table")
@click.option("--format","format",
    type=click.Choice(['csv','elasticsearch','excel','htm','html','javascript','js','json','json_lines','jsonl','latex_matrix','latex_table','ldjson','ltsv','markdown','md','mediawiki','ndjson','null','numpy','pandas','py','python','rst','rst_csv','rst_csv_table','rst_grid','rst_grid_table','rst_simple','rst_simple_table','space_aligned','sqlite','toml','tsv','unicode']),
    default="markdown"
)
@click.pass_obj
def db_schema_table(basedir,format):
    """Dump schema"""
    dataPath = os.path.join(basedir,"docs","_data")
    basePath = os.path.join(dataPath,"sqlite")
    verbosity_level=6
    for elt in os.listdir(basePath):
        dirname = os.path.join(basePath,elt)
        if os.path.isdir(dirname):
            db_path = os.path.join(dirname,"database.sqlite")
            extractor = sqliteschema.SQLiteSchemaExtractor(db_path)
            print(extractor.dumps(format,verbosity_level))

@cli.command(name="db-schema-to-yaml")
@click.pass_obj
def db_schema_to_yaml(basedir):
    """Extract schema from sqlite and place as _data."""
    dataPath = os.path.join(basedir,"docs","_data")
    basePath = os.path.join(dataPath,"sqlite")
    verbosity_level=6
    for elt in os.listdir(basePath):
        queryBase = os.path.join(basePath,elt)
        if os.path.isdir(queryBase):
            db_path = os.path.join(queryBase,"database.sqlite")
            extractor = sqliteschema.SQLiteSchemaExtractor(db_path)

            yaml_name = elt + "_schema.json"
            result_path = os.path.join(dataPath,yaml_name)
            with open(result_path, 'w') as outfile:
                outfile.write(extractor.dumps("json",verbosity_level))
                print("Wrote Schema To",result_path)
