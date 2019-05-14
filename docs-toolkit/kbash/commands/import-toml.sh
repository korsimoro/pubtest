#!/bin/bash
# Convert toml data to
#
print_help() {
  printf "`cat << EOF
${BLUE}pd install-data${NC}

Copies the YML, JSON, and CSV files out of docs-data directory to docs/_data,
preserving structure.
EOF
`\n"
}

copy_dir() {
  SOURCE=$1

  report_progress 'cd' "Entering $SOURCE"
  cd $SOURCE

  for EXT in toml; do
    report_progress 'find' "Copying $EXT"
    find . -not -path '*/\.*' -name \*.$EXT -exec $PD_KBASH/shell.sh -c "pd install-data-file {}" \;
  done
}

run() {

  TARGET="$PD/data/"
  SOURCE="$PD/data/"

  report_heading "Convert TOML to YML"
  #copy_dir $SOURCE/.submodules/infominer/DIDCentralized

  report_ok "$TARGET populated with TOML data"
}
