#!/bin/bash
clean_environment_ptdoc_mkdocs_help() {
  printf "`cat << EOF
${BLUE}ptdoc clean mkdocs${NC}

EOF
`\n"
}
export -f clean_environment_ptdoc_mkdocs_help

clean_environment_ptdoc_mkdocs() {
  echo "Component[mkdocs]:clean"
}
export -f clean_environment_ptdoc_mkdocs
