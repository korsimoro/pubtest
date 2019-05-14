#!/bin/bash
# Serve the site on http://127.0.0.1:4000
#
print_help() {
  printf "`cat << EOF
${BLUE}pd mkdocs rebuild${NC}

EOF
`\n"
}
run() {
<<<<<<< HEAD:docs-toolkit/kbash/commands/build-mkdocs.sh
  pd activate mkdocs

  local LOG=$MKDOCS_KBASH_LOGS/build-mkdocs.txt
=======
>>>>>>> documentation:docs-toolkit/kbash/components/mkdocs/commands/rebuild.sh
  pd activate mkdocs

  pd mkdocs prune

  #report_progress "copying rwot data" ""
  pd mkdocs copy-rwot

  # build the mkdocs portion
  #report_progress "mkdocs" "Logging to $LOG"
  pd build mkdocs

  report_ok "$TARGET build-mkdocs"
}
