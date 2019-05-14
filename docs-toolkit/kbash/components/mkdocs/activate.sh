#!/bin/bash
activate_environment_pd_mkdocs_help() {
printf "`cat << EOF
${BLUE}pd activate mkdocs${NC}

EOF
`\n"
}
export -f activate_environment_pd_mkdocs_help

activate_environment_pd_mkdocs() {
  activate_python_env $MKDOCS_VENV
}
export -f activate_environment_pd_mkdocs

ensure_environment_pd_mkdocs() {
  if ensure_active_python3_env $MKDOCS_VENV; then
    activate_environment_pd_mkdocs
  else
    false
  fi
}
export -f ensure_environment_pd_mkdocs
