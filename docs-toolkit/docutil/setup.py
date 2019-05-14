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
        'markdown==2.6.11',
        'click',
        'PyYAML',
        'python-slugify',
        'sqlitebiter',
        'sqlitestructure',
        'simplesqlite',
        'pytablewriter',
        'tabledata',
        'mkdocs',
        'python-dateutil',
        'datetime',
        'python-dateutil',
        'gitpython',
        'dominate',
        'toml'
    ],
    entry_points = {
        'console_scripts': ['docutil=docutil:cli'],
    }
)
