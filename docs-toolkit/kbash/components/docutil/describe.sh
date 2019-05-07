#!/bin/bash


export DOCUTIL_BASE=$PD/docutil
export DOCUTIL_NODE_VERSION=
export DOCUTIL_NODE_MODULES=$DOCUTIL_BASE/node_modules

export DOCUTIL_LERNA_PACKAGES=$DOCUTIL_BASE/packages

export DOCUTIL_PYTHON_VERSION=
export DOCUTIL_VENV=$DOCUTIL_BASE/venv

export DOCUTIL_LOG=$DOCUTIL_BASE/setup-logs

oneline_description_of_pd_docutil() {
  echo "Python environment for docutil"
}
export -f oneline_description_of_pd_docutil


describe_environment_pd_docutil_help() {
printf "`cat << EOF
${BLUE}pd describe docutil${NC}

EOF
`\n"
}
export -f describe_environment_pd_docutil_help

describe_environment_pd_docutil() {

  report_vars "Docutil Build Environment" \
      DOCUTIL_BASE\
      DOCUTIL_VENV

  local COMMAND=$(command -v docutil)
  if [ -z "$COMMAND" ]; then
    report_error "Can not find command docutil, environment does not appear to be correctly set up."
  else
    report_ok "docutil found at $COMMAND"
    true
  fi
}
export -f describe_environment_pd_docutil
