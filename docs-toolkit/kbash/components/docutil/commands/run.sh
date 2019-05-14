#!/bin/bash
# run a docutil command from any environment, if possible
#
print_help() {
  printf "`cat << EOF
${BLUE}pd docutil run [CMDLINE]${NC}

Run docutil from any context, after checking to make sure the system is
installed correctly.

EOF
`\n"

activate_environment_pd_docutil >/dev/null 2>&1
local CMD=$(command -v docutil)
if [ -z "$CMD" ]; then
  report_warning "docutil is not ready, try 'pd setup docutil'"
else
  docutil
fi
}
run() {

  # make sure we abort on any errors
  set -e

  # build the mkdocs portion
  pd activate docutil

  docutil "$@"
}
