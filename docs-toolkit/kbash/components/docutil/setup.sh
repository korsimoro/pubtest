#!/bin/bash
setup_environment_pd_docutil_help() {
printf "`cat << EOF
${BLUE}pd setup docutil${NC}

EOF
`\n"
}
export -f setup_environment_pd_docutil_help

setup_environment_pd_docutil() {
  default_python_setup $DOCUTIL_BASE
}
export -f setup_environment_pd_docutil
 
