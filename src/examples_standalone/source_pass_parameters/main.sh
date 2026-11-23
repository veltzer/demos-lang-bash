#!/bin/bash -eu

echo "in main"
# shellcheck source=/dev/null
source sourced_file.bashinc hello world
ret=$?
echo "back in main ${ret}"
