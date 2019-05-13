#!/bin/bash
build_environment_pd_docs_help() {
printf "`cat << EOF
${BLUE}pd build docs${NC}

EOF
`\n"
}
export -f build_environment_pd_docs_help

build_environment_pd_docs() {
  echo "Component[docs]:build"
}
export -f build_environment_pd_docs
