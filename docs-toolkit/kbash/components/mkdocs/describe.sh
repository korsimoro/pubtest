#!/bin/bash


export MKDOCS_BASE=$PD/mkdocs
<<<<<<< HEAD
export MKDOCS_PROJECTS=$PD/../docs-src/mkdocs
=======
export MKDOCS_PROJECTS=$MKDOCS_BASE/sites
>>>>>>> documentation

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
  report_vars "mkdocs environment" \
      MKDOCS_BASE\
      MKDOCS_PROJECTS\
      MKDOCS_PYTHON_VERSION\
      MKDOCS_VENV\
      MKDOCS_LOG\
      MKDOCS_KBASH_LOGS

  if [ -d "$MKDOCS_VENV" ]; then
    report_ok "Venv dir exists:$MKDOCS_VENV"
  else
    report_warning "Venv dir does not exist:$MKDOCS_VENV"
    report_warning "run pd setup mkdocs"
  fi
}
export -f describe_environment_pd_mkdocs
