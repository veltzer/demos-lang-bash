#!/bin/bash -eu

set +e

echo "in main"
# shellcheck source=/dev/null
source sourced_file.bashinc
ret=$?
echo "back in main return value is [${ret}]"
