#!/bin/bash
build_environment_ptdoc_mkdocs_help() {
printf "`cat << EOF
${BLUE}ptdoc build mkdocs${NC}

EOF
`\n"
}
export -f build_environment_ptdoc_mkdocs_help

build_environment_ptdoc_mkdocs() (
  cd $MKDOCS_BASE
  activate_environment_ptdoc_mkdocs
  mkdocs build
)
export -f build_environment_ptdoc_mkdocs
