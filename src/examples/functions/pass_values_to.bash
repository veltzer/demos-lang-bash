#!/bin/bash -ue

# This is how to pass values to a function
#
# NOTES:
# - it is recommended to assign argument to local
# variables declared with 'local' right at function start.
# - there is no reason to surround the arguments ($1, $2, ...)
# with quotes when doing this assignment.
# - when using the argument aside from the assignment to local
# variables they must be handled with care, as with any
# bash variable.

function func1 {
	local arg="$1"
	echo "arg is [$arg]"
}

function func2 {
	local arg=$1
	echo "arg is [$arg]"
}

function func3 {
	arg=$1
	echo "arg is [$arg]"
}

function func4 {
	echo "arg is [$1]"
}

func1 "hello world"
func2 "hello world"
func3 "hello world"
func4 "hello world"
