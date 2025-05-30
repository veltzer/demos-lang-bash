#!/bin/bash -u

# This example shows how to use logical operators when using the '['/'test' shell builtin.
# Note that '[' and '[[' are not the same as '[[' is a shell keyword and not a shell
# builtin and behaves differently.
# Also note that GNU in it's coreutils has a process implementation of both '[' and 'test'
# but these are not usually used as the shell builtins are preferred by bash.
# Notes:
# - if you want to see the documentation of '['/'test' *dont do 'man ['*. Instead
# look at man builtins and look for 'test'.
# - if you wish to do logical operators combined with '[' you must use -a, -o and more.

if [ 'foo' = 'foo' ]
then
	true
else
	error ${LINENO} "problem" 1
fi

if [ 'foo' != 'bar' ]
then
	true
else
	error ${LINENO} "problem" 1
fi

if [ 2 != 3 ] && [ 3 != 4 ]
then
	true
else
	error ${LINENO} "problem" 1
fi

let "a=2"
let "b=2"
if [ $a = 1 ] || [ $b = 2 ]
then
	true
else
	error ${LINENO} "problem" 1
fi
if [ $a = 2 ] && [ $b = 2 ]
then
	true
else
	error ${LINENO} "problem" 1
fi
