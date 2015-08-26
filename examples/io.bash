#!/bin/bash -u

<<COMMENT

This example shows how to work with files, reading them line by line.

http://www.cyberciti.biz/faq/unix-howto-read-line-by-line-from-file/

COMMENT

#!/bin/bash
file="/etc/passwd"
while IFS=: read -r f1 f2 f3 f4 f5 f6 f7
do
	# display fields using f1, f2,..,f7
	printf 'Username: %s, Shell: %s, Home Dir: %s\n' "$f1" "$f7" "$f6"
done <"$file"
