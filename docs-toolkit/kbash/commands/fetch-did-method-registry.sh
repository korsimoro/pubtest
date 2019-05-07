#!/bin/bash
# Extract the current did-method-registry from the web
#
print_help() {
  printf "`cat << EOF
${BLUE}pd fetch-did-method-registry${NC}

EOF
`\n"
}
run() {
  activate_environment_pd_docutil
  local DIR=$PD/docs/_data/sqlite/w3c_ccg
  mkdir -p $DIR
  cd $DIR
  sqlitebiter url https://w3c-ccg.github.io/did-method-registry
  mv out.sqlite database.sqlite
  report_ok "Database fetched to $DIR/database.sqlite"
}
