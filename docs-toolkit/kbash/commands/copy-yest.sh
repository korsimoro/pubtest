#!/bin/bash
# Serve the site on http://127.0.0.1:4000
#
print_help() {
  printf "`cat << EOF
${BLUE}pd copy-rwot${NC}

Copies the rwot data
EOF
`\n"
}
run() {
  TARGET="$PD/../docs/mkdocs/yest/docs"
  SOURCE="$PD/../docs-data/.submodules/infominer33/yest/docs"

  rm -rf $TARGET
  cp -r $SOURCE $TARGET
}
