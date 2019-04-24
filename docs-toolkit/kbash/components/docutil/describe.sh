#!/bin/bash


export DOCUTIL_BASE=$PTDOC/docutil
export DOCUTIL_NODE_VERSION=
export DOCUTIL_NODE_MODULES=$DOCUTIL_BASE/node_modules

export DOCUTIL_LERNA_PACKAGES=$DOCUTIL_BASE/packages

export DOCUTIL_PYTHON_VERSION=
export DOCUTIL_VENV=$DOCUTIL_BASE/venv

export DOCUTIL_LOG=$DOCUTIL_BASE/setup-logs

oneline_description_of_ptdoc_docutil() {
  echo "Python environment for docutil"
}
export -f oneline_description_of_ptdoc_docutil

vet_environment_ptdoc_docutil() {
  echo "Component[docutil]:vet"
}
export -f vet_environment_ptdoc_docutil

describe_environment_ptdoc_docutil_help() {
printf "`cat << EOF
${BLUE}ptdoc describe docutil${NC}

EOF
`\n"
}
export -f describe_environment_ptdoc_docutil_help

describe_environment_ptdoc_docutil() {
  echo "Component[docutil]:describe"

  report_vars "docutil Build Environment" \
      DOCUTIL_BASE\
      DOCUTIL_NODE_VERSION\
      DOCUTIL_PYTHON_VERSION
}
export -f describe_environment_ptdoc_docutil
