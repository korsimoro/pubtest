#!/bin/bash
activate_environment_pd_jekyll_help() {
printf "`cat << EOF
${BLUE}pd activate jekyll${NC}

EOF
`\n"
}
export -f activate_environment_pd_jekyll_help

activate_environment_pd_jekyll() {
  export RUBY_GEM_PATH=$JEKYLL_BASE/.rubygems
  export RUBY_BIN_PATH=$JEKYLL_BASE/.rubybin
  true
}
export -f activate_environment_pd_jekyll
