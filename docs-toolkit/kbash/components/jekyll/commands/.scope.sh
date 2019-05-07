#!/bin/bash

pd_scope_usage() {
  #echo "<<DESCRIBE ANY OPTIONS FOR THIS SCOPE>>"
  echo ""
}
pd_scope_help() {
printf "`cat << EOF
Work with the jekyll environment.  Full documentation is provided below
and is from :
  $PD_KBASH/components/jekyll/README.md
EOF
`\n\n"

cat $PD_KBASH/components/jekyll/README.md
}
