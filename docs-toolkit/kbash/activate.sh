#!/bin/bash

# uncommenting this line will cause trace output
#export KBASH_TRACE=true

export PTDOC="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

# change this if you did not clone into ~/.kbash
. $PTDOC/.kbash/boot.sh\
    "ptdoc"  \
    "PTDOC"  \
    ""            \
    "python ruby"
