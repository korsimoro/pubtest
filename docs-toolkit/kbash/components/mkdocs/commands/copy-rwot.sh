#!/bin/bash
# Serve the site on http://127.0.0.1:4000
#
print_help() {
  printf "`cat << EOF
${BLUE}pd copy-rwot${NC}

Copies the rwot data
EOF
`\n"
}
copy_dir() {
  SCOPE=$1
  SRC=$2
  DST=$3

  mkdir -p $DST
  rm -rf $DST
  cp -r $SRC/$SCOPE $DST
  cp -r $SRC/README.md $DST/index.md
}

run() {
  report_heading "Processing RWOT projects in $MKDOCS_PROJECTS"

  TOPICS="$MKDOCS_PROJECTS/rwot-topics"
  PAPERS="$MKDOCS_PROJECTS/rwot-papers"
  SOURCE="$PD/data/.submodules/WebOfTrustInfo"

  local RWOT1="$SOURCE/rwot1-sf"
  local RWOT2="$SOURCE/rwot2-id2020"
  local RWOT3="$SOURCE/rwot3-sf"
  local RWOT4="$SOURCE/rwot4-paris"
  local RWOT5="$SOURCE/rwot5-boston"
  local RWOT6="$SOURCE/rwot6-santabarbara"
  local RWOT7="$SOURCE/rwot7-toronto"
  local RWOT8="$SOURCE/rwot8-barcelona"

  report_progress "copy-rwot" "Copy topics and advance readings"
  copy_dir "topics-and-advance-readings" "$RWOT1" $TOPICS/docs/RWoT1
  copy_dir "topics-and-advance-readings" "$RWOT2" $TOPICS/docs/RWoT2
  copy_dir "topics-and-advance-readings" "$RWOT3" $TOPICS/docs/RWoT3
  copy_dir "topics-and-advance-readings" "$RWOT4" $TOPICS/docs/RWoT4
  copy_dir "topics-and-advance-readings" "$RWOT5" $TOPICS/docs/RWoT5
  copy_dir "topics-and-advance-readings" "$RWOT6" $TOPICS/docs/RWoT6
  copy_dir "topics-and-advance-readings" "$RWOT7" $TOPICS/docs/RWoT7
  copy_dir "topics-and-advance-readings" "$RWOT8" $TOPICS/docs/RWoT8

  rm -rf $TOPICS/docs/RWoT8/The-Untimely-Death-Of-SSI

  report_progress "copy-rwot" "Copy final papers"
  copy_dir "final-documents" "$RWOT1" $PAPERS/docs/RWoT1
  copy_dir "final-documents" "$RWOT2" $PAPERS/docs/RWoT2
  copy_dir "final-documents" "$RWOT3" $PAPERS/docs/RWoT3
  copy_dir "final-documents" "$RWOT4" $PAPERS/docs/RWoT4
  copy_dir "final-documents" "$RWOT5" $PAPERS/docs/RWoT5
  copy_dir "final-documents" "$RWOT6" $PAPERS/docs/RWoT6
  copy_dir "final-documents" "$RWOT7" $PAPERS/docs/RWoT7
  copy_dir "final-documents" "$RWOT8" $PAPERS/docs/RWoT8

  #report_progress "copy-rwot" "Copy readme's to about.md files"
  #for BASE in $TOPICS $PAPERS; do
  #  cp $RWOT1/README.md $BASE/docs/rwot1.md
  #  cp $RWOT2/README.md $BASE/docs/rwot2.md
  #  cp $RWOT3/README.md $BASE/docs/rwot3.md
  #  cp $RWOT4/README.md $BASE/docs/rwot4.md
  #  cp $RWOT5/README.md $BASE/docs/rwot5.md
  #  cp $RWOT6/README.md $BASE/docs/rwot6.md
  #  cp $RWOT7/README.md $BASE/docs/rwot7.md
  #  cp $RWOT8/README.md $BASE/docs/rwot8.md
  #done

  cd $TOPICS/src
  report_progress "copy-rwot" "Copy final src $TOPICS/src"
  tar -cf - * | tar -C ../docs -xf -
  cd $PAPERS/src
  report_progress "copy-rwot" "Copy final src $PAPERS/src"
  tar -cf - * | tar -C ../docs -xf -

}
