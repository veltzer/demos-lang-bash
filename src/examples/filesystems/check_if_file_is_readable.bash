#!/bin/bash -ue

# This example shows how to check if a file is readable or writable in bash.
# References:
# - https://askubuntu.com/questions/558977/checking-for-a-file-and-whether-it-is-readable-and-writable

function readable() {
	local filename=$1
	[ -r "$filename" ]
	return $?

}

if readable "/etc/passwd"
then
	echo "yes, /etc/passwd is readable"
fi
if ! readable "/etc/ssl/private"
then
	echo "no, /etc/ssl/private is unreadable"
fi
