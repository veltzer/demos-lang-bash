#!/bin/bash -u

# This example shows that collecting a value from a function via
# back ticks or $() is fine but actually runs the function in a
# subshell and so the function cannot change any variables in the
# parent shell.

function is_declared() {
	local varname=$1
	declare -p $varname > /dev/null 2> /dev/null
}

function foo() {
	x=7
	echo -n "the_result"
}

y=$(foo)
if [ $y = "the_result" ]
then
	echo "correct return value from function"
fi
if ! is_declared x
then
	echo "function call could not set variable which means it was in a subshell"
fi

y=`foo`
if [ $y = "the_result" ]
then
	echo "correct return value from function"
fi
if ! is_declared x
then
	echo "function call could not set variable which means it was in a subshell"
fi
