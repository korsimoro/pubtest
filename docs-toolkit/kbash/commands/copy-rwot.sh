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
  SRC=$1
  DST=$2

  mkdir -p $DST
  cp -r $SRC/topics-and-advance-readings $DST
  cp -r $SRC/../README.md $DST/index.md
}

run() {
  TOPICS="$PD/../docs/mkdics/rwot-topics"
  PAPERS="$PD/../docs/mkdocs/rwot-papers"
  SOURCE="$PD/../docs-data/.submodules/WebOfTrustInfo"

  local RWOT1="$SOURCE/rwot1-sf"
  local RWOT2="$SOURCE/rwot2-id2020"
  local RWOT3="$SOURCE/rwot3-sf"
  local RWOT4="$SOURCE/rwot4-paris"
  local RWOT5="$SOURCE/rwot5-boston"
  local RWOT6="$SOURCE/rwot6-santabarbara"
  local RWOT7="$SOURCE/rwot7-toronto"
  local RWOT8="$SOURCE/rwot8-barcelona"

  for BASE in $TOPICS $PAPERS; do
    cp $RWOT1/README.md $BASE/rwot1.md
    cp $RWOT2/README.md $BASE/rwot2.md
    cp $RWOT3/README.md $BASE/rwot3.md
    cp $RWOT4/README.md $BASE/rwot4.md
    cp $RWOT5/README.md $BASE/rwot5.md
    cp $RWOT6/README.md $BASE/rwot6.md
    cp $RWOT7/README.md $BASE/rwot7.md
    cp $RWOT8/README.md $BASE/rwot8.md
  done

  copy_dir "$RWOT1/topics-and-advance-readings" $TOPICS/RWoT1
  copy_dir "$RWOT2/topics-and-advance-readings" $TOPICS/RWoT2
  copy_dir "$RWOT3/topics-and-advance-readings" $TOPICS/RWoT3
  copy_dir "$RWOT4/topics-and-advance-readings" $TOPICS/RWoT4
  copy_dir "$RWOT5/topics-and-advance-readings" $TOPICS/RWoT5
  copy_dir "$RWOT6/topics-and-advance-readings" $TOPICS/RWoT6
  copy_dir "$RWOT7/topics-and-advance-readings" $TOPICS/RWoT7
  copy_dir "$RWOT8/topics-and-advance-readings" $TOPICS/RWoT8

  copy_dir "$RWOT1/final-documents" $PAPERS/RWoT1
  copy_dir "$RWOT2/final-documents" $PAPERS/RWoT2
  copy_dir "$RWOT3/final-documents" $PAPERS/RWoT3
  copy_dir "$RWOT4/final-documents" $PAPERS/RWoT4
  copy_dir "$RWOT5/final-documents" $PAPERS/RWoT5
  copy_dir "$RWOT6/final-documents" $PAPERS/RWoT6
  copy_dir "$RWOT7/final-documents" $PAPERS/RWoT7
  copy_dir "$RWOT8/final-documents" $PAPERS/RWoT8

}
