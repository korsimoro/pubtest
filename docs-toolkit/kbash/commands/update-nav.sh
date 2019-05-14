#!/bin/bash
# Serve the site on http://127.0.0.1:4000
#
print_help() {
  printf "`cat << EOF
${BLUE}pd update-nav${NC}

Just updates navigation.yml
EOF
`\n"
}
run() {

  pd jekyll install-data-file navigation.yml

}
