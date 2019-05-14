#!/bin/bash
# Serve the site on http://127.0.0.1:4000
#
print_help() {
  printf "`cat << EOF
${BLUE}pd jekyll serve${NC}

Ensures the jekyll environment is viable, then runs the jekyll server
from the docs directory:
  $(pathof $PD/../docs)

EOF
`\n"
}
run() {

  # make sure we abort on any errors
  set -e

  # set up the jekyll environment and make it executable, then run the
  # local dev server
  pd activate jekyll
  cd $PD/../docs-src
  pd bundle exec jekyll serve
}
