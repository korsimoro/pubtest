#!/bin/bash
# Serve the site on http://127.0.0.1:4000
#
print_help() {
  printf "`cat << EOF
${BLUE}ptdoc serve${NC}

This performs the following actions:
- builds mkdocs portions of the site
- runs the jekyll server

EOF
`\n"
}
run() {
  ptdoc build mkdocs
  ptdoc activate jekyll
  cd $PTDOC/../docs
  ptdoc bundle exec jekyll serve
}
