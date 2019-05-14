#!/bin/bash
setup_environment_pd_jekyll_help() {
printf "`cat << EOF
${BLUE}pd setup jekyll${NC}

EOF
`\n"
}
export -f setup_environment_pd_jekyll_help

setup_environment_pd_jekyll() {
  # cd here to find the Gemfile
  cd $JEKYLL_SRC
  default_ruby_setup $JEKYLL_BASE "any-version"
}
export -f setup_environment_pd_jekyll
