#!/bin/bash -u

# this example shows the equivalent of a 'pass' statement
# in bash. This is the 'true' shell builtin which executes really
# quickly and succeeds.
# Note that this 'pass like' statement is needed and removing it
# will lead to syntax error. Replacing it with a comment will not work
# either.
# Should you use 'false'? Well, techincally 'false' fails and if you are running
# bash in a strict mode where failure stops and fails the entire script then
# 'false' is different from 'true'.
# ':' is similar to false although it is guaranteed to be a shell builtin.
#
# References:
# http://stackoverflow.com/questions/2421586/what-is-the-bash-equivalent-of-pythons-pass-statement

if false
then
	true
else
	echo "im in here"
fi

if false
then
	:
else
	echo "im in here"
fi
