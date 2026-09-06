#!/bin/bash -eu

# this example explores the conditional statement in bash
# note that:
# - [ is a shell builtin
# - [[ is a shell keyword
# - test is a shell builtin

if test -d /etc -a -f /etc/passwd
then
	echo "/etc is a folder and /etc/passwd is a file..."
else
	echo "strange Linux system you have here..."
fi

# this example shows the -a form too, which is why it is used here
# shellcheck disable=SC2166
# [ ] does accept -a, which is what this block shows
# shellcheck disable=SC2166
if [ -d /etc -a -f /etc/passwd ]
then
	echo "/etc is a folder and /etc/passwd is a file..."
else
	echo "strange Linux system you have here..."
fi

# -a does NOT work inside [[ ]]: modern bash rejects it as a syntax error,
# so the equivalent is written with && below.
#	if [[ -d /etc -a -f /etc/passwd ]]
# && is preferred to -a
if [[ -d /etc && -f /etc/passwd ]]
then
	echo "/etc is a folder and /etc/passwd is a file..."
else
	echo "strange Linux system you have here..."
fi
