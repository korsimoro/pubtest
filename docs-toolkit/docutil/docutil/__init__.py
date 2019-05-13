import click
import os

from .lib import *

@click.group(name="tool")
@click.option('--dir','basedir',
    help="Base Directory (Checkout)",
    # this is relative to the tool/__init__.py file in development
    default=os.path.join(os.path.dirname(os.path.abspath(__file__)),"..","..","..")
)
@click.pass_context
def cli(ctx,basedir):
    """Simple utilities to massage data in the repo."""
    ctx.obj = Application(basedir)

if __name__ == '__main__':
    cli()


from .db_list import *
from .db_schema import *
from .db_query import *
from .db_digest import *
from .gitlog import *
from .toml_to import *
