#!/bin/bash
clean_environment_pd_docutil_help() {
  printf "`cat << EOF
${BLUE}pd clean docutil${NC}

EOF
`\n"
}
export -f clean_environment_pd_docutil_help

clean_environment_pd_docutil() {
  echo "Component[docutil]:clean"
}
export -f clean_environment_pd_docutil
