import click
import sqlite3 as db
import yaml
import os
import sqliteschema
from . import *

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
