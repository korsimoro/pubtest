#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"
DOC=$(cat << EOF
	git submodule update --init
	pd setup docutil
	pd setup mkdocs
EOF
)
echo "$DOC" | exec ./kbash/shell.sh -i "$@"

