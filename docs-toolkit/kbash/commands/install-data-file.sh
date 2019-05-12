#!/bin/bash
# Serve the site on http://127.0.0.1:4000
#
print_help() {
  printf "`cat << EOF
${BLUE}pd install-data-file [RELATIVE_PATH]${NC}

Copies a specific file from docs-data/RELATIVE_PATH to docs/_data/RELATIVE_PATH

EOF
`\n"
}
run() {

  TARGET="$PD/../docs/_data"
  SOURCE="$PD/../docs-data"

  RELATIVE_PATH=$1
  if [ -z "$RELATIVE_PATH" ]; then
    error "usage pd install-data-file relative-path"
  else
    TARGET_DIR=$(dirname "$TARGET/$RELATIVE_PATH")
    TARGET_FILE=$(basename "$TARGET/$RELATIVE_PATH"  )
    mkdir -p $TARGET_DIR
    cp $SOURCE/$RELATIVE_PATH $TARGET_DIR/$TARGET_FILE
    report_progress "cp" "$SOURCE/$RELATIVE_PATH -> $TARGET_DIR/$TARGET_FILE"
  fi
}
