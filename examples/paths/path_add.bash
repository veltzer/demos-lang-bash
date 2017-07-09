#!/bin/bash -u

# This example shows how to correctly add compoents to envrionment
# or non environment variables like 'PATH'.
# References:
# - http://superuser.com/questions/39751/add-directory-to-path-if-its-not-already-there

PATH="/sbin"
PATH="/usr/bin"
PATH="/usr/bin:/sbin"
PATH="/sbin:/usr/bin"

pathadd_after() {
	if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
		PATH="${PATH:+"$PATH:"}$1"
	fi
}

pathadd_before() {
	if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
		PATH="$1${PATH:+"$PATH:"}"
	fi
}

pathadd_after /usr/bin
pathadd_before /usr/bin

echo $PATH
