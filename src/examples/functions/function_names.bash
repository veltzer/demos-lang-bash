#!/bin/bash -ue

# These are examples that intend to check what function
# names work in bash.
#
# NOTES:
# - you can use hyphen in the names of functions although according
# to some documentation you can't.

function func-this {
	echo "hello"
}

func-this
