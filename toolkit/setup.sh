#!/bin/bash
TOOLKIT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
PYTHON_TOOLKIT_DIR=$TOOLKIT_DIR/python
RUBY_TOOLKIT_DIR=$TOOLKIT_DIR/ruby
$PYTHON_TOOLKIT_DIR/setup.sh
$RUBY_TOOLKIT_DIR/setup.sh
