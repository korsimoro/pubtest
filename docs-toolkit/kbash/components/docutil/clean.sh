#!/bin/bash
clean_environment_ptdoc_docutil_help() {
  printf "`cat << EOF
${BLUE}ptdoc clean docutil${NC}

EOF
`\n"
}
export -f clean_environment_ptdoc_docutil_help

clean_environment_ptdoc_docutil() {
  echo "Component[docutil]:clean"
}
export -f clean_environment_ptdoc_docutil
