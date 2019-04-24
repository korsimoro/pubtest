#!/bin/bash
setup_environment_ptdoc_docutil_help() {
printf "`cat << EOF
${BLUE}ptdoc setup docutil${NC}

EOF
`\n"
}
export -f setup_environment_ptdoc_docutil_help

setup_environment_ptdoc_docutil() {
  default_python_setup $DOCUTIL_BASE
}
export -f setup_environment_ptdoc_docutil
