#!/bin/bash -eu

# This example shows how to use logical operators when using the '['/'test' shell builtin.
# Note that '[' and '[[' are not the same as '[[' is a shell keyword and not a shell
# builtin and behaves differently.
# Also note that GNU in it's coreutils has a process implementation of both '[' and 'test'
# but these are not usually used as the shell builtins are preferred by bash.
# Notes:
# - if you want to see the documentation of '['/'test' *dont do 'man ['*. Instead
# look at man builtins and look for 'test'.
# - if you wish to do logical operators combined with '[' you must use -a, -o and more.

s1='foo'
s2='bar'
n2=2
n3=3
n4=4
# shellcheck disable=SC2292  # teaching: this example is about the [ builtin itself
if [ "${s1}" = 'foo' ]
then
	true
else
	error "${LINENO}" "problem" 1
fi

# shellcheck disable=SC2292  # teaching: this example is about the [ builtin itself
if [ "${s1}" != "${s2}" ]
then
	true
else
	error "${LINENO}" "problem" 1
fi

# shellcheck disable=SC2292  # teaching: this example is about the [ builtin itself
if [ "${n2}" != "${n3}" ] && [ "${n3}" != "${n4}" ]
then
	true
else
	error "${LINENO}" "problem" 1
fi

((a=2))
((b=2))
# shellcheck disable=SC2292  # teaching: this example is about the [ builtin itself
if [ "${a}" = 1 ] || [ "${b}" = 2 ]
then
	true
else
	error "${LINENO}" "problem" 1
fi
# shellcheck disable=SC2292  # teaching: this example is about the [ builtin itself
if [ "${a}" = 2 ] && [ "${b}" = 2 ]
then
	true
else
	error "${LINENO}" "problem" 1
fi
