#!/bin/bash
activate_environment_ptdoc_docutil_help() {
printf "`cat << EOF
${BLUE}ptdoc activate docutil${NC}

EOF
`\n"
}
export -f activate_environment_ptdoc_docutil_help

activate_environment_ptdoc_docutil() {
  activate_python_env $DOCUTIL_VENV
}
export -f activate_environment_ptdoc_docutil
