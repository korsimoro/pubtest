#!/bin/bash
TOOLKIT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd $TOOLKIT_DIR
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
export rvm_path=$TOOLKIT_DIR/.rvm
echo rm -rf $rvm_path
rm -rf $rvm_path
echo "Installing RVM in $rvm_path"
curl -sSL https://get.rvm.io | bash -s
echo "Activate with : . $rvm_path/scripts/rvm"

echo "Activating"
. $rvm_path/scripts/rvm
echo "installing ruby-head"
rvm install ruby-head
echo "running bundle install to load all the Gemfile bits"
bundle install

