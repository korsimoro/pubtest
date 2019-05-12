from . import docs_dir
from .db import *

class Application(object):

    def __init__(self,basedir):
        self.basedir = basedir
        self.dbconfig = DatabaseConfiguration(basedir)
        self.generated_data_base_dir = docs_dir(basedir,'_generated')
