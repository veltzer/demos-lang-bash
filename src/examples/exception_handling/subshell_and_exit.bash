#!/bin/bash -ue

# This is an example of how to do some type of 'exception handling'
# in bash by using a subshell and exit.
#
# References:
# - https://stackoverflow.com/questions/22009364/is-there-a-try-catch-command-in-bash

function exit_with_error() {
	exit 5
}

echo "before"
result=0
(exit_with_error) || result=$?
echo "after $result"
