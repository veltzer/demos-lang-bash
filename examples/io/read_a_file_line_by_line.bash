#!/bin/bash -u

# This example shows how to work with files, reading them line by line.
# References:
# http://www.cyberciti.biz/faq/unix-howto-read-line-by-line-from-file/

while IFS= read -r line
do
	# display $line or do somthing with $line
	printf '%s\n' "$line"
done < /etc/passwd
