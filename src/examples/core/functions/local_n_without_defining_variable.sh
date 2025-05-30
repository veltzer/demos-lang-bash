\#\!/bin/bash -eu

# This example investigates whether we can do local -n on a variable which
# is not yet defined.
#
# The conclusions are:
# - using local -n is great. Use it.
# - if the variable you are aliasing to does not exist then a global variable
# by that name is created. This is not good.
# - conclusion: always use a local var and declare it before passing it to
# a function that is doing "local -n" aliasing.

function set_to() {
	local -n var=$1
	local val=$2
	var=$val
}

# you don't really need the complication of this function
function set_to_test() {
	if ! declare -p "$1" > /dev/null
	then
		declare -g "$1"
	fi
	local -n var=$1
	local val=$2
	var=$val
}	


function function_without_pre_declaration() {
	set_to x 7
	echo "inside function x is $x"
}

function function_with_pre_declaration() {
	local y
	set_to y 7
	echo "inside function y is $y"
}

function test_it() {
	function_without_pre_declaration
	declare -p x
	function_with_pre_declaration
	declare -p y
}

test_it
declare -p x y

unset x y

function_without_pre_declaration
declare -p x
function_with_pre_declaration
declare -p y
