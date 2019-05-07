#!/bin/bash

# uncommenting this line will cause trace output
#export KBASH_TRACE=true

export PD="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

# change this if you did not clone into ~/.kbash
#. $PD/.kbash/boot.sh\
. ~/.kbash/boot.sh\
    "pd"  \
    "PD"  \
    ""            \
    "python ruby"
