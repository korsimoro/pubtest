#!/bin/bash
# Detailed Information about KBASH
# example usage print_kidlist_help COMMAND
#
# print the top level help, subsequent subcommands will override this
# function with the appropriate help
print_help() {
  run
}
run() {
  ptdoc build mkdocs
  ptdoc activate jekyll
  cd $PTDOC/../docs
  ptdoc bundle exec jekyll serve
}
