#!/bin/bash
# Serve the site on http://127.0.0.1:4000
#
print_help() {
  printf "`cat << EOF
${BLUE}pd build-mkdocs${NC}

EOF
`\n"
}
run() {

  cp $PD/../README.md $PD/mkdocs/sites/poc/src/details.md

  pd mkdocs copy-rwot

  pd docutil run db-query
  pd docutil run db-schema
  pd docutil run db-digest

  pd import-toml

}
