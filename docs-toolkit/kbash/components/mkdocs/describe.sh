#!/bin/bash


export MKDOCS_BASE=$PD/mkdocs

export MKDOCS_PYTHON_VERSION=v3.6.2
export MKDOCS_VENV=$MKDOCS_BASE/venv

export MKDOCS_LOG=$MKDOCS_BASE/setup-logs
export MKDOCS_KBASH_LOGS=$MKDOCS_BASE/kbash-logs
mkdir -p $MKDOCS_KBASH_LOGS

oneline_description_of_pd_mkdocs() {
  echo "Description of mkdocs"
}
export -f oneline_description_of_pd_mkdocs

# checks to see if
vet_environment_pd_mkdocs() {
  check_basic_python_ability
}
export -f vet_environment_pd_mkdocs

describe_environment_pd_mkdocs_help() {
printf "`cat << EOF
${BLUE}pd describe mkdocs${NC}

EOF
`\n"
}
export -f describe_environment_pd_mkdocs_help

describe_environment_pd_mkdocs() {
  echo "Component[mkdocs]:describe"

  report_vars "mkdocs Build Environment" \
      MKDOCS_BASE\
      MKDOCS_NODE_VERSION\
      MKDOCS_PYTHON_VERSION
}
export -f describe_environment_pd_mkdocs
