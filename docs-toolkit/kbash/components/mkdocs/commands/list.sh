#!/bin/bash
# list mkdocs subsites

print_help() {
printf "`cat << EOF
${BLUE}pd mkdocs list${NC}

EOF
`\n"
}

run() (
  cd $MKDOCS_PROJECTS
  for DIR in $MKDOCS_PROJECTS/*; do
    echo $(basename "$DIR")
  done

)
