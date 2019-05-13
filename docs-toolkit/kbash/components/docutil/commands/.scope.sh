#!/bin/bash
# Not-used

pd_scope_usage() {
  # echo "<<DESCRIBE ANY OPTIONS FOR THIS SCOPE>>"
  echo "[SUBCOMMAND]"
}
pd_scope_help() {
printf "`cat << EOF
These commands work with docutil, allowing interaction with docutil from
any shell context - the shell wrapper simply makes sure the docutil environment
is available and correctly configured.

EOF
`\n\n"
}

# This will get run before any docutil command, so we can make adaptations
# to the environment here, if necessary

#
#RuntimeError: Click will abort further execution because Python 3 was configured to use ASCII as encoding for the environment. Consult https://click.palletsprojects.com/en/7.x/python3/ for mitigation steps.
#
#This system supports the C.UTF-8 locale which is recommended.
#You might be able to resolve your issue by exporting the
#following environment variables:
#
export LC_ALL=C.UTF-8
export LANG=C.UTF-8
