#!/bin/bash -eu

# This is how to call another process and return it's output
# as part of a function.

# make functions called inside $(...) keep "set -e"
shopt -s inherit_errexit

function do_ls() {
	ls "$1"
}

r=$(do_ls /var)
echo "r is [${r}]"
