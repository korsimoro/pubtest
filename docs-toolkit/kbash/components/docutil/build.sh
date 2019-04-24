#!/bin/bash
build_environment_ptdoc_docutil_help() {
printf "`cat << EOF
${BLUE}ptdoc build docutil${NC}

EOF
`\n"
}
export -f build_environment_ptdoc_docutil_help

build_environment_ptdoc_docutil() {
  echo "Component[docutil]:build"
}
export -f build_environment_ptdoc_docutil
