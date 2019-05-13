#!/bin/bash
build_environment_pd_mkdocs_help() {
printf "`cat << EOF
${BLUE}pd build mkdocs${NC}

EOF
`\n"
}
export -f build_environment_pd_mkdocs_help

build_environment_pd_mkdocs() (
  if ensure_environment_pd_mkdocs; then
    for DIR in $MKDOCS_PROJECTS/*; do
      cd $DIR
      mkdocs build
    done
  else
    report_error "unabe to build documents, perhaps the environment is not set up"
    describe_environment_pd_mkdocs
    false
  fi
)
export -f build_environment_pd_mkdocs
