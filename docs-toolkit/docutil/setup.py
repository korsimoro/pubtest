#!/usr/bin/env python

from distutils.core import setup

setup(
    name='Pubtest Utility',
    version='0.1',
    description='Pubtest Utility',
    author='Korsimoro',
    author_email='eric@korsimoro.com',
    url='none-yet',
    packages=[
        'docutil'
    ],
    install_requires=[
        'click',
        'PyYAML',
        'python-slugify',
        'sqlitebiter',
        'sqlitestructure',
        'pytablewriter',
        'mkdocs',
        'python-dateutil',
        'datetime',
        'gitpython',
        'toml'
    ],
    entry_points = {
        'console_scripts': ['docutil=docutil:cli'],
    }
)
