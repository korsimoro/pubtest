#!/bin/bash


export MKDOCS_BASE=$PTDOC/mkdocs

export MKDOCS_PYTHON_VERSION=v3.6.2
export MKDOCS_VENV=$MKDOCS_BASE/venv

export MKDOCS_LOG=$MKDOCS_BASE/setup-logs

oneline_description_of_ptdoc_mkdocs() {
  echo "Description of mkdocs"
}
export -f oneline_description_of_ptdoc_mkdocs

vet_environment_ptdoc_mkdocs() {
  echo "Component[mkdocs]:vet"
}
export -f vet_environment_ptdoc_mkdocs

describe_environment_ptdoc_mkdocs_help() {
printf "`cat << EOF
${BLUE}ptdoc describe mkdocs${NC}

EOF
`\n"
}
export -f describe_environment_ptdoc_mkdocs_help

describe_environment_ptdoc_mkdocs() {
  echo "Component[mkdocs]:describe"

  report_vars "mkdocs Build Environment" \
      MKDOCS_BASE\
      MKDOCS_NODE_VERSION\
      MKDOCS_PYTHON_VERSION
}
export -f describe_environment_ptdoc_mkdocs
