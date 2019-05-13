#!/bin/bash
activate_environment_pd_docutil_help() {
printf "`cat << EOF
${BLUE}pd activate docutil${NC}

EOF
`\n"
}
export -f activate_environment_pd_docutil_help

vet_environment_pd_docutil() {
  check_basic_python_ability
}
export -f vet_environment_pd_docutil

activate_environment_pd_docutil() {
  activate_python_env $DOCUTIL_VENV
}
export -f activate_environment_pd_docutil
