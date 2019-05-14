#!/bin/bash
# view docs

print_help() {
printf "`cat << EOF
${BLUE}pd mkdocs info${NC}

The $MKDOCS/setup.py file defines the dependencies for mkdocs, including
plugins and themes.

The virtual env is in $MKDOCS_VENV

EOF
`\n"
pd describe mkdocs
}

run() (
  print_help
)
