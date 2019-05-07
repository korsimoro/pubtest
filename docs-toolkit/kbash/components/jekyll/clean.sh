#!/bin/bash
clean_environment_pd_jekyll_help() {
  printf "`cat << EOF
${BLUE}pd clean jekyll${NC}

EOF
`\n"
}
export -f clean_environment_pd_jekyll_help

clean_environment_pd_jekyll() {
  echo "Component[jekyll]:clean"
}
export -f clean_environment_pd_jekyll
