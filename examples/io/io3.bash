#!/bin/bash -u

<<COMMENT

This shows how to process a list, entry by entry.

http://www.cyberciti.biz/faq/unix-howto-read-line-by-line-from-file/

COMMENT

list=$(dpkg --list php\* | awk '/ii/{print $2}')
#printf '%s\n' "$list"
#exit 0
while IFS= read -r line
do
	# display $line or do somthing with $line
	printf '%s\n' "$line"
done <<< "$list"
