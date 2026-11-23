#!/bin/bash -eu

# This example shows how to check if a file is readable or writable in bash.
# References:
# - https://askubuntu.com/questions/558977/checking-for-a-file-and-whether-it-is-readable-and-writable

function readable() {
	local filename=$1
	[[ -r "${filename}" ]]
	return $?

}

set +e
readable "/etc/passwd"
rc=$?
set -e
if [[ "${rc}" -eq 0 ]]
then
	echo "yes, /etc/passwd is readable"
fi
set +e
readable "/etc/ssl/private"
rc=$?
set -e
if [[ "${rc}" -ne 0 ]]
then
	echo "no, /etc/ssl/private is unreadable"
fi
