
import os
import tabledata
import pytablewriter

def docs_dir(basedir,scope):
    return os.path.join(basedir,"docs",scope)

def data_dir(basedir,scope):
    return os.path.join(basedir,"docs-data",scope)

def value_of(data,key):

    if key == None:
        return data

    if data == None:
        return None

    split = key.split(".",1)
    probe = split[0]
    remainder = split[1] if len(split)>1 else None

    if probe in data:
        return value_of(data[probe],remainder)
    else:
        return None

from .tabledata import *
from .db import *
from .app import *
