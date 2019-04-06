#!/bin/bash
TOOLKIT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd $TOOLKIT_DIR
virtualenv -p python3 ./venv
. ./venv/bin/activate
pip install -r requirements.txt
pip install -e .
tool
echo "To Activate - type this : . $PWD/venv/bin/activate"
