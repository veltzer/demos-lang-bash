#!/bin/bash -eu

set +e

echo "before return_early"
# shellcheck source=/dev/null
source return_early.bashinc
ret=$?
echo "after return_early with return value [${ret}]"

echo "before last_command"
# shellcheck source=/dev/null
source last_command.bashinc
ret=$?
echo "after last_command with return value [${ret}]"
