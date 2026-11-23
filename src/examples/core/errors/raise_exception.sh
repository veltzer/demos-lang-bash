#!/bin/bash -eu

# This is a basic example of how to do error raising in bash.
#
# References:
# - http://stackoverflow.com/questions/64786/error-handling-in-bash

function error() {
	local message=$1
	local code=$2
	local caller_info caller_line caller_function caller_file
	caller_info=$(caller 0)
	# caller prints "line function file" on one line
	read -r caller_line caller_function caller_file <<<"${caller_info}"
	echo "error in file [${caller_file}], function [${caller_function}], line [${caller_line}], message [${message}], code [${code}]"
	exit "${code}"
}

error "problem" 1
