#!/bin/bash -u

# This is an example of how to check that a function has been passed a value.
#
# References:
# https://unix.stackexchange.com/questions/239125/how-do-i-check-whether-a-variable-has-been-passed-to-a-function-in-bash

function func1 {
	local arg=$1
	if [[ -n "$1" ]]
	then
		echo "have a value"
	else
		echo "dont have a value"
	fi
}

function func2 {
	local arg=$1
	if [[ "${1:+present}" ]]
	then
		echo "have a value"
	else
		echo "dont have a value"
	fi
}

function func3 {
	local arg=$1
	if [[ $# == 1 ]]
	then
		echo "have a value"
	else
		echo "dont have a value"
	fi
}

func1 "value"
func2 "value"
func3 "value"
