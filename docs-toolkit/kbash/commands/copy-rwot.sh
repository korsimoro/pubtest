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
run() {
  #!/bin/bash
  RWOT=$1
  DIR=$(dirname ../assets/repos/WebOfTrustInfo/$RWOT*/.)
  SCOPE=topics-and-advance-readings
  DOCDIR=$DIR/$SCOPE
  TARGETDIR=docs/$RWOT/$SCOPE
  pushd $DOCDIR > /dev/null
  LIST=$(ls -1 *.md | sed -e s/.md$//g)
  popd > /dev/null
  mkdir -p $TARGETDIR
  for paper in $LIST; do
          FPATH=$DOCDIR/$paper.md
          if [ -f "$FPATH" ]; then
                  cp $FPATH $TARGETDIR/$paper.md
          fi
  done

  pushd $TARGETDIR > /dev/null
  LIST=$(ls -1 *.md | sed -e s/.md$//g)
  popd > /dev/null
  for paper in $LIST; do
          echo "      - $(slugify $paper):'$RWOT/$SCOPE/$paper'"
  done
:}
