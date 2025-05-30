#!/bin/bash -u

# This is how to call another process and return it's output
# as part of a function.

function do_ls() {
	ls $1
}

r=$(do_ls /var)
echo "r is [$r]"
