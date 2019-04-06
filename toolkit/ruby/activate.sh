#!/bin/bash
TOOLKIT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
export rvm_path=$TOOLKIT_DIR/.rvm
echo "Activating: . $rvm_path/scripts/rvm"
. $rvm_path/scripts/rvm

