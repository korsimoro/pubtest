#!/bin/bash

# uncommenting this line will cause trace output
#export KBASH_TRACE=true

export PD="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"
export PD_BASE=$PD/..
export PD_TOOLKIT=$PD
export PD_DOCS=$PD/docs
export PD_DATA=$PD/data

# change this if you did not clone into ~/.kbash
#. ~/.kbash/boot.sh\
. $PD/.kbash/boot.sh\
    "pd"  \
    "PD"  \
    ""            \
    "python ruby"
