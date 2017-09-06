#!/bin/bash -ue

# This example shows how you can extract the name of the current
# function in bash.
#
# References:
# - https://stackoverflow.com/questions/1835943/how-to-determine-function-name-from-inside-a-function

function foo {
	echo "${FUNCNAME[0]}"
}

foo
