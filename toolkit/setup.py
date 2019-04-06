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
        'tool'
    ],
    install_requires=[
        'click',
        'PyYAML'
    ],
    entry_points = {
        'console_scripts': ['tool=tool:cli'],
    }
)
