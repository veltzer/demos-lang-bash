#!/bin/bash -eu

# This program shows how to check in bash if a certain program is in the path.
#
# Notes:
# - the '2> /dev/null' is to suppress the errors comming out of hash
# when it cannot find a program.
#
# References:
# - http://stackoverflow.com/questions/592620/check-if-a-program-exists-from-a-bash-script

function is_in_path() {
	local prog=$1
	hash "${prog}" 2> /dev/null
}

set +e
is_in_path ls
rc=$?
set -e
if [[ "${rc}" -eq 0 ]]
then
	echo "ls is in the path"
fi

set +e
is_in_path lss
rc=$?
set -e
if [[ "${rc}" -ne 0 ]]
then
	echo "lss is not in the path"
fi

alias foo=bar
set +e
is_in_path foo
rc=$?
set -e
if [[ "${rc}" -eq 0 ]]
then
	echo "foo is in the path"
fi
