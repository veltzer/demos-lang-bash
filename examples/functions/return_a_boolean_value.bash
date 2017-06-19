#!/bin/bash -u

<<'COMMENT'

This is how to return a boolean value from a bash function.

References:
- https://stackoverflow.com/questions/5431909/bash-functions-return-boolean-to-be-used-in-if

COMMENT

function yes {
	return 0
}

function no {
	return 1
}

if yes; then echo "yes"; fi
if ! no ; then echo "no"; fi
