#!/bin/bash -u

# This is an example of how to check that a correct number of arguments has been passed
# to a bash function.

function func {
	if [ "$#" -ne 2 ]
	then
		echo "usage: func <arg1> <arg2>"
		return
	fi
	local arg1="$1"
	local arg2="$2"
	echo "arg1=${arg1}, arg2=${arg2}"
}

func
func "hi" "there"
