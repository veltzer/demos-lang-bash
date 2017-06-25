#!/bin/bash -u

<<'COMMENT'

This is how to return a boolean value from a bash function.

Notes:
- you cannot write code like this:
	return [ ... ]
	the right way to write this code would be:
	[ ... ]
	return $?

References:
- https://stackoverflow.com/questions/5431909/bash-functions-return-boolean-to-be-used-in-if

COMMENT

function yes {
	return 0
}

function no {
	return 1
}

function func() {
	[ -f "/etc/passwd" ]
	return $?
}

if yes; then echo "yes"; fi
if ! no ; then echo "no"; fi
if func; then echo "yes, /etc/passwd is readable"; fi
