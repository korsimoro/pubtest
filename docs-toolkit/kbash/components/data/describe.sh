#!/bin/bash


export PD_DOCS_BASE=$PD/data
export PD_DOCS_NODE_VERSION=
export PD_DOCS_NODE_MODULES=$PD_DOCS_BASE/node_modules

export PD_DOCS_LERNA_PACKAGES=$PD_DOCS_BASE/packages

export PD_DOCS_PYTHON_VERSION=
export PD_DOCS_VENV=$PD_DOCS_BASE/venv

export PD_DOCS_LOG=$PD_DOCS_BASE/setup-logs

oneline_description_of_pd_data() {
  echo "Description of data"
}
export -f oneline_description_of_pd_data

vet_environment_pd_data() {
  echo "Component[data]:vet"
}
export -f vet_environment_pd_data

describe_environment_pd_data_help() {
printf "`cat << EOF
${BLUE}pd describe data${NC}

EOF
`\n"
}
export -f describe_environment_pd_data_help

describe_environment_pd_data() {
  echo "Component[data]:describe"

  report_vars "data Build Environment" \
      PD_DOCS_BASE\
      PD_DOCS_NODE_VERSION\
      PD_DOCS_PYTHON_VERSION
}
export -f describe_environment_pd_data
