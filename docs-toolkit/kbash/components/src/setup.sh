#!/bin/bash
setup_environment_pd_docs_help() {
printf "`cat << EOF
${BLUE}pd setup docs${NC}

EOF
`\n"
}
export -f setup_environment_pd_docs_help

setup_environment_pd_docs() {
  echo "Component[docs]:setup"
}
export -f setup_environment_pd_docs
