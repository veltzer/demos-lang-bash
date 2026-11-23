#!/bin/bash -eu

# This example shows that collecting a value from a function via
# back ticks or $() is fine but actually runs the function in a
# subshell and so the function cannot change any variables in the
# parent shell.

# make functions called inside $(...) keep "set -e"
shopt -s inherit_errexit

function is_declared() {
	local varname=$1
	declare -p "${varname}" > /dev/null 2> /dev/null
}

function foo() {
	x=7
	echo "foo set x to ${x}" >&2
	echo -n "the_result"
}

y=$(foo)
if [[ "${y}" = "the_result" ]]
then
	echo "correct return value from function"
fi
set +e
is_declared x
rc=$?
set -e
if [[ "${rc}" -ne 0 ]]
then
	echo "function call could not set variable which means it was in a subshell"
fi

# shellcheck disable=SC2006  # teaching: the backtick form is the second way to capture output, shown next to $(...)
y=`foo`
if [[ "${y}" = "the_result" ]]
then
	echo "correct return value from function"
fi
set +e
is_declared x
rc=$?
set -e
if [[ "${rc}" -ne 0 ]]
then
	echo "function call could not set variable which means it was in a subshell"
fi
