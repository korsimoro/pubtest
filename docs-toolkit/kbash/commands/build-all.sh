#!/bin/bash
# Serve the site on http://127.0.0.1:4000
#
print_help() {
  printf "`cat << EOF
${BLUE}pd build-all${NC}

EOF
`\n"
}
}
run() {
  pd build-data
  pd build-mkdocs
  pd build-jekyll
}
