#!/bin/bash


export JEKYLL_BASE=$PTDOC/jekyll
export JEKYLL_LOG=$JEKYLL_BASE/setup-logs

oneline_description_of_ptdoc_jekyll() {
  echo "Support for running Jekyll Locally"
}
export -f oneline_description_of_ptdoc_jekyll

vet_environment_ptdoc_jekyll() {
  check_basic_ruby_ability
}
export -f vet_environment_ptdoc_jekyll

describe_environment_ptdoc_jekyll_help() {
printf "`cat << EOF
${BLUE}ptdoc describe jekyll${NC}

EOF
`\n"
}
export -f describe_environment_ptdoc_jekyll_help

describe_environment_ptdoc_jekyll() {
  report_heading "Jekyll Build Environment"

  report_vars "Settings" \
      JEKYLL_BASE\
      JEKYLL_LOG

  report_ruby_env
}
export -f describe_environment_ptdoc_jekyll
