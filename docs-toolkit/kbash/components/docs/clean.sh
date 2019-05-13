#!/bin/bash
clean_environment_pd_docs_help() {
  printf "`cat << EOF
${BLUE}pd clean docs${NC}

EOF
`\n"
}
export -f clean_environment_pd_docs_help

clean_environment_pd_docs() {
  echo "Component[docs]:clean"
}
export -f clean_environment_pd_docs
