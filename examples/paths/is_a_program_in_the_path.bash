#!/bin/bash -u

<<'COMMENT'

This program shows how to check in bash if a certain program is in the path.

Notes:
- the '2> /dev/null' is to suppress the errors comming out of hash
when it cannot find a program.

References:
- http://stackoverflow.com/questions/592620/check-if-a-program-exists-from-a-bash-script

COMMENT

function is_in_path() {
	local prog=$1
	hash $prog 2> /dev/null
	return
}

if is_in_path ls; then
	echo "ls is in the path"
fi

if ! is_in_path lss; then
	echo "lss is not in the path"
fi

alias foo=bar
if is_in_path foo; then
	echo "foo is in the path"
fi
