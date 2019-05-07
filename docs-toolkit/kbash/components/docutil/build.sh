#!/bin/bash
build_environment_pd_docutil_help() {
printf "`cat << EOF
${BLUE}pd build docutil${NC}

EOF
`\n"
}
export -f build_environment_pd_docutil_help

build_environment_pd_docutil() {
  echo "Component[docutil]:build"
}
export -f build_environment_pd_docutil
