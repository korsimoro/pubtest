#!/bin/bash
clean_environment_ptdoc_jekyll_help() {
  printf "`cat << EOF
${BLUE}ptdoc clean jekyll${NC}

EOF
`\n"
}
export -f clean_environment_ptdoc_jekyll_help

clean_environment_ptdoc_jekyll() {
  echo "Component[jekyll]:clean"
}
export -f clean_environment_ptdoc_jekyll
