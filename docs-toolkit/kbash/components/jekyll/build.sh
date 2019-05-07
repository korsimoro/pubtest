#!/bin/bash
build_environment_pd_jekyll_help() {
printf "`cat << EOF
${BLUE}pd build jekyll${NC}

EOF
`\n"
}
export -f build_environment_pd_jekyll_help

build_environment_pd_jekyll() {
  echo "Component[jekyll]:build"
}
export -f build_environment_pd_jekyll
