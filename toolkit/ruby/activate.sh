#!/bin/bash
TOOLKIT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/..

RUBY_TOOLKIT_DIR=$TOOLKIT_DIR/ruby
export RUBY_GEM_PATH=$RUBY_TOOLKIT_DIR/.rubygems
export RUBY_BIN_PATH=$RUBY_TOOLKIT_DIR/.rubybin
runjekyll() {
	$RUBY_BIN_PATH/bundle exec jekyll "$@"
}
export -f runjekyll
