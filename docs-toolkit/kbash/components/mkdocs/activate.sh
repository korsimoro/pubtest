#!/bin/bash
activate_environment_ptdoc_mkdocs_help() {
printf "`cat << EOF
${BLUE}ptdoc activate mkdocs${NC}

EOF
`\n"
}
export -f activate_environment_ptdoc_mkdocs_help

activate_environment_ptdoc_mkdocs() {
  activate_python_env $MKDOCS_VENV
}
export -f activate_environment_ptdoc_mkdocs
