#!/bin/bash -ue

# This is an example of how to format output text in bash using the builtin
# 'printf' command
#
# NOTES:
# - printf by default just prints it's output to the standrad output. If that
# is what you need then great.
# - if you need to get a hold of printf output and not print it yet you have
# two ways.
#	t=$(printf ...)
# or
#	printf -v t ...
# and the second way is better because it does not invoke a subshell.

let "x=100"
while [[ $x -gt 0 ]]
do
	printf "%06d\r" $x
	let "x=x-1"
	sleep 1
done
