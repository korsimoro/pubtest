#!/bin/bash
activate_environment_pd_data_help() {
printf "`cat << EOF
${BLUE}pd activate data${NC}

EOF
`\n"
}
export -f activate_environment_pd_data_help

activate_environment_pd_data() {
  echo "Component[data]:activate"
}
export -f activate_environment_pd_data
