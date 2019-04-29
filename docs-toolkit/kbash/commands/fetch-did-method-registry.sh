#!/bin/bash
# Serve the site on http://127.0.0.1:4000
#
print_help() {
  printf "`cat << EOF
${BLUE}ptdoc serve${NC}

This performs the following actions:
- builds mkdocs portions of the site
- runs the jekyll server

EOF
`\n"
}
run() {
  activate_environment_ptdoc_docutil
  local DIR=$PTDOC/docs/_data/sqlite/w3c_ccg
  mkdir -p $DIR
  cd $DIR
  sqlitebiter url https://w3c-ccg.github.io/did-method-registry
  mv out.sqlite database.sqlite
  report_ok "Database fetched to $DIR/database.sqlite"
}
