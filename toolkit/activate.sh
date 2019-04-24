#!/bin/bash
TOOLKIT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

PYTHON_TOOLKIT_DIR=$TOOLKIT_DIR/python
. $PYTHON_TOOLKIT_DIR/venv/bin/activate
tool

. $TOOLKIT_DIR/ruby/activate.sh

