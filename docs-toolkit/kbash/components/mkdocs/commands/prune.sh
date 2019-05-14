#!/bin/bash
# Remove docs and output dirs
#
print_help() {
  printf "`cat << EOF
${BLUE}pd mkdocs prune${NC}

EOF
`\n"
}
run() {
  pd activate mkdocs

  report_progress "prune": "deleting ok mkdocs_projects"
  for DIR in $MKDOCS_PROJECTS/*; do
    cd $DIR
    rm -rf output
    if [ -d 'src' ]; then
      report_progress "prune": "removed docs dir, as src is present"
      rm -rf docs
    fi
  done

}
