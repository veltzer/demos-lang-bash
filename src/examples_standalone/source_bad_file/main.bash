#!/bin/bash -ue

echo "before"
set +e
source bad_file.bashinc > /dev/null 2> /dev/null
echo $?
set -e
echo "after"
