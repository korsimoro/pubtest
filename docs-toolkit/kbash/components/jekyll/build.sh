#!/bin/bash
build_environment_pd_jekyll_help() {
printf "`cat << EOF
${BLUE}pd build jekyll${NC}

EOF
`\n"
}
export -f build_environment_pd_jekyll_help

build_environment_pd_jekyll() {
  activate_environment_pd_jekyll
  cd $JEKYLL_SRC
  pd bundle exec jekyll build --trace --verbose
}
export -f build_environment_pd_jekyll
