#!/bin/bash
clean_environment_pd_data_help() {
  printf "`cat << EOF
${BLUE}pd clean data${NC}

EOF
`\n"
}
export -f clean_environment_pd_data_help

clean_environment_pd_data() {
  echo "Component[data]:clean"
}
export -f clean_environment_pd_data
