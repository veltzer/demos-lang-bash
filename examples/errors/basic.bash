#!/bin/bash -u

<<'COMMENT'

This is a basic example of how to do error raising in bash.

References:
http://stackoverflow.com/questions/64786/error-handling-in-bash

COMMENT

function error() {
	expr [caller 1]
	local parent_lineno="$1"
	local message="$2"
	local code="${3:-1}"
	if [[ -n "$message" ]] ; then
		echo "Error on or near line ${parent_lineno}: ${message}; exiting with status ${code}"
	else
		echo "Error on or near line ${parent_lineno}; exiting with status ${code}"
	fi
	exit "${code}"
}

error ${LINENO} "problem" 1
