#!/bin/bash
# Serve the site on http://127.0.0.1:4000
#
print_help() {
  printf "`cat << EOF
${BLUE}pd build-all${NC}

Copies the YML and JSON files out of docs-data directory to docs/_data,
preserving structure.
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

  TARGET="$PD/../docs/_data"
  SOURCE="$PD/../docs-data"


  report_progress 'clear' "Purging $TARGET"
  rm -rf $TARGET
  mkdir -p $TARGET

  pd docutil run db-query
  pd docutil run db-schema
  pd docutil run db-digest
  pd import-toml
  install_formatted_data

  # build the mkdocs portion
  local LOG=$MKDOCS_KBASH_LOGS/serve-build.txt
  report_progress "step1" "Logging to $LOG"
  pd build mkdocs >$LOG

  report_ok "$TARGET populated"
}
