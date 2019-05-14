#!/bin/bash
# Serve the site on http://127.0.0.1:4000
#
print_help() {
  printf "`cat << EOF
${BLUE}pd serve${NC}

This performs the following actions:
- builds mkdocs portions of the site
- runs the jekyll server

EOF
`\n"
}
run() {

  # make sure we abort on any errors
  set -e

  # build everything
  pd build-all

  # now serve the jekyll docs and incorporate the updated mkdocs
  pd jekyll serve
}
