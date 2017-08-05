#!/bin/bash -u

# This is how to pass values to a function

function print_arg {
	echo $1
}

print_arg hello
