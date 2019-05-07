#!/bin/bash
clean_environment_pd_mkdocs_help() {
  printf "`cat << EOF
${BLUE}pd clean mkdocs${NC}

EOF
`\n"
}
export -f clean_environment_pd_mkdocs_help

clean_environment_pd_mkdocs() {
  echo "Component[mkdocs]:clean"
}
export -f clean_environment_pd_mkdocs
