#!/bin/bash -eu

# This is how to return a boolean value from a bash function.
#
# Notes:
# - you cannot write code like this:
#	return [ ... ]
#	the right way to write this code would be:
#	[ ... ]
#	return $?
# - you can use implicit return value. This means you just write 'return' and leave
# off the value. The value will be $?.
# - you can use implicit return. This means you can avoid writing a 'return'
# statement at all. $? is your return value if you do not return a value.
#
# References:
# - https://stackoverflow.com/questions/5431909/bash-functions-return-boolean-to-be-used-in-if

function yes {
	return 0
}

function no {
	return 1
}

function func() {
	[[ -r "/etc/passwd" ]]
	return $?
}

function implicit_return_1() {
	[[ -r "/etc/passwd" ]]
}

function implicit_return_2() {
	[[ -r "/etc/shadow" ]]
}

function implicit_return_3() {
	[[ -r "/etc/passwd" ]]
	return
}

function implicit_return_4() {
	[[ -r "/etc/shadow" ]]
	return
}

function empty_function() {
	:
}

# call each predicate outside of the condition and look at its status,
# this keeps "set -e" enabled inside the function bodies
set +e
yes
rc=$?
set -e
if [[ "${rc}" -eq 0 ]]
then echo "yes"
fi
set +e
no
rc=$?
set -e
if [[ "${rc}" -ne 0 ]]
then echo "no"
fi
set +e
func
rc=$?
set -e
if [[ "${rc}" -eq 0 ]]
then echo "yes, /etc/passwd is readable"
fi
set +e
implicit_return_1
rc=$?
set -e
if [[ "${rc}" -eq 0 ]]
then echo "yes, /etc/passwd is readable"
fi
set +e
implicit_return_2
rc=$?
set -e
if [[ "${rc}" -ne 0 ]]
then echo "yes, /etc/shadow is unreadable"
fi
set +e
implicit_return_3
rc=$?
set -e
if [[ "${rc}" -eq 0 ]]
then echo "yes, /etc/passwd is readable"
fi
set +e
implicit_return_4
rc=$?
set -e
if [[ "${rc}" -ne 0 ]]
then echo "yes, /etc/shadow is unreadable"
fi
set +e
empty_function
rc=$?
set -e
if [[ "${rc}" -eq 0 ]]
then echo "yes, empty function returns 0"
fi
set +e
empty_function
rc=$?
set -e
if [[ "${rc}" -ne 0 ]]
then :
else echo "yes, empty function returns 0"
fi
