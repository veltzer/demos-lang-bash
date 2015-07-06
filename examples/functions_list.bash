#!/bin/bash -u

<<COMMENT

This example shows how to list all functions which have been declared.

References:
http://stackoverflow.com/questions/4471364/how-do-i-list-the-functions-defined-in-my-shell

COMMENT

function myfunc1 {
	echo myfunc1
}

function myfunc2 {
	echo myfunc2
}

declare -f | grep myfunc
declare -F | grep myfunc
typeset -f | grep myfunc
typeset -F | grep myfunc
compgen -A function myfunc
