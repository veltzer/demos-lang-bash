#!/bin/bash -u

# This example shows how to create a temporary file in bash(1).
# References:
# - https://www.cyberciti.biz/tips/shell-scripting-bash-how-to-create-temporary-random-file-name.html

tfile=$(mktemp /tmp/foo.XXXXXXXXX)
if [ -f "$tfile" ]; then
	echo "yes, the file [$tfile] is there"
fi

rm $tfile
