#!/bin/bash -u

# This example shows how to work with files, reading them line by line.
#
# NOTES:
# - the double quotes around the filename are needed for file names
# that may have special characters in them (spaces, semicolons etc)
# - the approach here, using read, doesn't launch any subshells
# which is good from a performance point of view.
# - the code in the loop run inside your own script which is good
# because you can set variables in it.
# - 'read' is a shell builtin which means that it will give you
# good performance.
#
# References:
# - http://www.cyberciti.biz/faq/unix-howto-read-line-by-line-from-file/

filename="/etc/passwd"

while IFS= read -r line
do
	# do somthing with $line
	printf '%s\n' "$line"
done < "$filename"
