#!/bin/bash
setup_environment_ptdoc_mkdocs_help() {
printf "`cat << EOF
${BLUE}ptdoc setup mkdocs${NC}
Setup just enough python for mkdocs
EOF
`\n"
}
export -f setup_environment_ptdoc_mkdocs_help

setup_environment_ptdoc_mkdocs() {
  default_python_setup $MKDOCS_BASE
}
export -f setup_environment_ptdoc_mkdocs
