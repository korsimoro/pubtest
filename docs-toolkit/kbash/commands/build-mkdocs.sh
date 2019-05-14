#!/bin/bash
# Serve the site on http://127.0.0.1:4000
#
print_help() {
  printf "`cat << EOF
${BLUE}pd build-mkdocs${NC}

EOF
`\n"
}
run() {


  local LOG=$MKDOCS_KBASH_LOGS/build-mkdocs.txt
  pd activate mkdocs

  for DIR in $MKDOCS_PROJECTS/*; do
    cd $DIR
    rm -rf output
  done

  #report_progress "copying rwot data" ""
  pd copy-rwot

  # build the mkdocs portion
  #report_progress "mkdocs" "Logging to $LOG"
  pd build mkdocs

  report_ok "$TARGET build-mkdocs"
}
