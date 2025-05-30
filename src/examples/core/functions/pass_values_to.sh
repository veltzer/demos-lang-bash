\#\!/bin/bash -eu

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
	local arg=$1
	echo "arg is [$arg]"
}

function func2 {
	arg=$1
	echo "arg is [$arg]"
}

function func3 {
	echo "arg is [$1]"
}

function func4 {
	# not quoting $1, $2, ... is a mistake when just using them
	echo $1
}

function func5 {
	# you can put quotations around $1, $2, ... but it is superfluous
	local arg="$1"
	echo "arg is [$arg]"
}

func1 "hello world"
func2 "hello world"
func3 "hello world"
func4 "hello world"
func5 "hello world"
