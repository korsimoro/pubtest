#!/bin/bash
build_environment_pd_data_help() {
printf "`cat << EOF
${BLUE}pd build data${NC}

EOF
`\n"
}
export -f build_environment_pd_data_help

build_environment_pd_data() {
  echo "Component[data]:build"
}
export -f build_environment_pd_data
