#!/bin/bash -eu

# This is an example of how to check that a function has been passed a value.
#
# References:
# https://unix.stackexchange.com/questions/239125/how-do-i-check-whether-a-variable-has-been-passed-to-a-function-in-bash

function func1 {
	if [[ -n "$1" ]]
	then
		echo "have a value"
	else
		echo "dont have a value"
	fi
}

function func2 {
	if [[ "${1:+present}" ]]
	then
		echo "have a value"
	else
		echo "dont have a value"
	fi
}

function func3 {
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
