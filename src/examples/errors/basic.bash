#!/bin/bash -ue

# This is a basic example of how to do error raising in bash.
#
# References:
# - http://stackoverflow.com/questions/64786/error-handling-in-bash

function error() {
	local message=$1
	local code=$2
	a=($(caller 0))
	caller_line="${a[0]}"
	caller_function="${a[1]}"
	caller_file="${a[2]}"
	echo "error in file [$caller_file], function [$caller_function], line [$caller_line], message [$message], code [$code]"
	exit "${code}"
}

error "problem" 1
