#!/bin/bash
TOOLKIT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

PYTHON_TOOLKIT_DIR=$TOOLKIT_DIR/python
. $PYTHON_TOOLKIT_DIR/venv/bin/activate
tool

#RUBY_TOOLKIT_DIR=$TOOLKIT_DIR/ruby
#export rvm_path=$RUBY_TOOLKIT_DIR/.rvm
#echo "Activating: . $rvm_path/scripts/rvm"
#. $rvm_path/scripts/rvm
#ruby --version
