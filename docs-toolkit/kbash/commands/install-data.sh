#!/bin/bash
# Serve the site on http://127.0.0.1:4000
#
print_help() {
  printf "`cat << EOF
${BLUE}pd install-data${NC}

Copies the YML, JSON, and CSV files out of docs-data directory to docs/_data,
preserving structure.
EOF
`\n"
}
run() {

  TARGET="$PD/../docs/_data"
  SOURCE="$PD/../docs-data"

  report_progress 'clear' "Purging $TARGET"
  rm -rf $TARGET
  mkdir -p $TARGET

  report_progress 'cd' "Entering $SOURCE"
  cd $SOURCE

  for EXT in yml json csv; do
    report_progress 'find' "Copying $EXT"
    find . -name \*.$EXT -exec $PD_KBASH/shell.sh -i -c "pd install-data-file {}" \;
  done

  report_ok "$SOURCE populated"
}
