#!/bin/bash

function oneline_help_pd_goto_dbs() {
  echo "cd $PD/docs/_data/sqlite"
}
export -f oneline_help_pd_goto_dbs

function cmdline_help_pd_goto_dbs() {
  echo ""
}
export -f cmdline_help_pd_goto_dbs


function help_pd_goto_dbs() {
printf "`cat << EOF
shorthand for cd $PD/docs/_data/sqlite
EOF
`\n"
}
export -f help_pd_goto_dbs

function run_pd_goto_dbs() {
  cd $PD/docs/_data/sqlite
}
export -f run_pd_goto_dbs
