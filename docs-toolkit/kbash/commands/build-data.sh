#!/bin/bash
# Serve the site on http://127.0.0.1:4000
#
print_help() {
  printf "`cat << EOF
${BLUE}pd build-mkdocs${NC}

EOF
`\n"
}
install_formatted_data() {
  report_progress 'cd' "Entering $SOURCE"
  cd $SOURCE

  for EXT in yml json; do
    report_progress 'find' "Copying $EXT"
    find . -not -path '*/\.*' -name \*.$EXT -exec $PD_KBASH/shell.sh -c "pd install-data-file {}" \;
  done
}
run() {

  TARGET="$JEKYLL_SRC/_data"
  SOURCE="$PD/../docs-data"

  report_progress 'clear' "Purging $TARGET"
  pd docutil run db-query
  pd docutil run db-schema
  pd docutil run db-digest
  pd import-toml

  report_progress 'clear' "Purging $TARGET"
  rm -rf $TARGET
  mkdir -p $TARGET
  install_formatted_data

}
