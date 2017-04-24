#!/bin/bash -u

<<'COMMENT'

This is how to pass values to a function

COMMENT

function print_arg {
	echo $1
}

print_arg hello
