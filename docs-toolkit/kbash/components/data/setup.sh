#!/bin/bash
setup_environment_pd_data_help() {
printf "`cat << EOF
${BLUE}pd setup data${NC}

EOF
`\n"
}
export -f setup_environment_pd_data_help

setup_environment_pd_data() {
  echo "Component[data]:setup"
}
export -f setup_environment_pd_data
