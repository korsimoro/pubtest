#!/bin/bash
TOOLKIT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd $TOOLKIT_DIR

RUBY_VERSION=$(ruby --version)
if [ -z "$RUBY_VERSION" ]; then
	echo "Can not find ruby"
	exit -1
fi

RUBY_BUNDLER_VERSION=$(bundle --version)
if [ ! "$RUBY_BUNDLER_VERSION" = "Bundler version 2.0.1" ]; then
	echo "Ruby Bundler incorrect version $RUBY_BUNDLER_VERSION, need 2.0.1"
	exit -1
fi

export RUBY_PATH=$TOOLKIT_DIR/.ruby
export RUBY_BIN_PATH=$TOOLKIT_DIR/.rubybin
bundle install --path $RUBY_PATH --binstubs $RUBY_BIN_PATH

