#!/bin/bash
# Serve the site on http://127.0.0.1:4000
#
print_help() {
  printf "`cat << EOF
${BLUE}pd install-data${NC}

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
    find . -not -path '*/\.*' -name \*.$EXT -exec $PD_KBASH/shell.sh -c "pd jekyll install-data-file {}" \;
  done
}
run() {

  TARGET="$JEKYLL_SRC/_data"
  SOURCE="$PD/data"

  report_progress 'clear' "Purging $TARGET"
  rm -rf $TARGET
  mkdir -p $TARGET

  install_formatted_data

  report_ok "$TARGET populated"
}
