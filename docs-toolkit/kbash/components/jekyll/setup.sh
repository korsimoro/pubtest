#!/bin/bash
setup_environment_pd_jekyll_help() {
printf "`cat << EOF
${BLUE}pd setup jekyll${NC}

EOF
`\n"
}
export -f setup_environment_pd_jekyll_help

setup_environment_pd_jekyll() {
  local RUBY_GEM_PATH=$JEKYLL_BASE/.rubygems
  local RUBY_BIN_PATH=$JEKYLL_BASE/.rubybin
  cd $PD/../docs
  bundle install --path $RUBY_GEM_PATH --binstubs $RUBY_BIN_PATH
}
export -f setup_environment_pd_jekyll
