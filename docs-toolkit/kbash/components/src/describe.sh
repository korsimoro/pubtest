#!/bin/bash


export PD_DOCS_BASE=$PD/docs
export PD_DOCS_NODE_VERSION=
export PD_DOCS_NODE_MODULES=$PD_DOCS_BASE/node_modules

export PD_DOCS_LERNA_PACKAGES=$PD_DOCS_BASE/packages

export PD_DOCS_PYTHON_VERSION=
export PD_DOCS_VENV=$PD_DOCS_BASE/venv

export PD_DOCS_LOG=$PD_DOCS_BASE/setup-logs

oneline_description_of_pd_docs() {
  echo "Description of docs"
}
export -f oneline_description_of_pd_docs

vet_environment_pd_docs() {
  echo "Component[docs]:vet"
}
export -f vet_environment_pd_docs

describe_environment_pd_docs_help() {
printf "`cat << EOF
${BLUE}pd describe docs${NC}

EOF
`\n"
}
export -f describe_environment_pd_docs_help

describe_environment_pd_docs() {
  echo "Component[docs]:describe"

  report_vars "docs Build Environment" \
      PD_DOCS_BASE\
      PD_DOCS_NODE_VERSION\
      PD_DOCS_PYTHON_VERSION
}
export -f describe_environment_pd_docs
