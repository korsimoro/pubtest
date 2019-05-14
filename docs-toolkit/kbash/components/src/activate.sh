#!/bin/bash
activate_environment_pd_docs_help() {
printf "`cat << EOF
${BLUE}pd activate docs${NC}

EOF
`\n"
}
export -f activate_environment_pd_docs_help

activate_environment_pd_docs() {
  echo "Component[docs]:activate"
}
export -f activate_environment_pd_docs
