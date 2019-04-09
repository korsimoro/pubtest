#!/bin/bash
TOOLKIT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
PYTHON_TOOLKIT_DIR=$TOOLKIT_DIR/python
RUBY_TOOLKIT_DIR=$TOOLKIT_DIR/ruby
. $PYTHON_TOOLKIT_DIR/venv/bin/activate
tool
export rvm_path=$RUBY_TOOLKIT_DIR/.rvm
echo "Activating: . $rvm_path/scripts/rvm"
. $rvm_path/scripts/rvm
ruby --version
