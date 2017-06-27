#!/bin/bash -u

<<'COMMENT'

This is how to return a boolean value from a bash function.

Notes:
- you cannot write code like this:
	return [ ... ]
	the right way to write this code would be:
	[ ... ]
	return $?
- you can use implicit return. This means you can avoid writing a 'return'
statement at all. $? is your return value if you do not return a value.
- you can use implicit return value. This means you just write 'return' and leave
off the value. The value will be $?.

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
	[ -r "/etc/passwd" ]
	return $?
}

function implicit_return_1() {
	[ -r "/etc/passwd" ]
}

function implicit_return_2() {
	[ -r "/etc/shadow" ]
}

function implicit_return_3() {
	[ -r "/etc/passwd" ]
	return
}

function implicit_return_4() {
	[ -r "/etc/shadow" ]
	return
}

function empty_function() {
	:
}

if yes; then echo "yes"; fi
if ! no ; then echo "no"; fi
if func; then echo "yes, /etc/passwd is readable"; fi
if implicit_return_1; then echo "yes, /etc/passwd is readable"; fi
if ! implicit_return_2; then echo "yes, /etc/shadow is unreadable"; fi
if implicit_return_3; then echo "yes, /etc/passwd is readable"; fi
if ! implicit_return_4; then echo "yes, /etc/shadow is unreadable"; fi
if empty_function; then echo "yes, empty function returns 0"; fi
if ! empty_function; then :; else echo "yes, empty function returns 0"; fi
