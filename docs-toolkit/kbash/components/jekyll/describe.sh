#!/bin/bash


export JEKYLL_BASE=$PD/jekyll
export JEKYLL_LOG=$JEKYLL_BASE/setup-logs
export JEKYLL_SRC=$JEKYLL_BASE/src

oneline_description_of_pd_jekyll() {
  echo "Support for running Jekyll Locally"
}
export -f oneline_description_of_pd_jekyll

vet_environment_pd_jekyll() {
  check_basic_ruby_ability
}
export -f vet_environment_pd_jekyll

describe_environment_pd_jekyll_help() {
printf "`cat << EOF
${BLUE}pd describe jekyll${NC}

EOF
`\n"
}
export -f describe_environment_pd_jekyll_help

describe_environment_pd_jekyll() {
  report_heading "Jekyll Build Environment"

  report_vars "Settings" \
      JEKYLL_BASE\
      JEKYLL_LOG\
      JEKYLL_SRC

  report_ruby_env
}
export -f describe_environment_pd_jekyll
