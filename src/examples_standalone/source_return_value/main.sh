#!/bin/bash -u

set +e

echo "before return_early"
source return_early.bashinc
ret=$?
echo "after return_early with return value [$ret]"

echo "before last_command"
source last_command.bashinc
ret=$?
echo "after last_command with return value [$ret]"
