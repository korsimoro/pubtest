#!/bin/bash
build_environment_ptdoc_jekyll_help() {
printf "`cat << EOF
${BLUE}ptdoc build jekyll${NC}

EOF
`\n"
}
export -f build_environment_ptdoc_jekyll_help

build_environment_ptdoc_jekyll() {
  echo "Component[jekyll]:build"
}
export -f build_environment_ptdoc_jekyll
