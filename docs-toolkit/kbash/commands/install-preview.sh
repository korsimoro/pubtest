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

run() {

  rm -rf $PD/../docs/preview
  mkdir -p $PD/../docs/preview
  tar -C $PD/jekyll/src/_site -cf - . | tar -C $PD/../docs/preview -xf -
}
