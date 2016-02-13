#!/bin/bash -u

<<COMMENT

This example shows how to work with files, reading them line by line.

http://www.cyberciti.biz/faq/unix-howto-read-line-by-line-from-file/

NOTES:
- why is the double quotes needed when specifying "$$file" at the end
of the script? to work correctly for file names that have white spaces
in them.
- the -r flag is needed because otherwise backslashes will be treated
as escape codes when reading.

COMMENT

file="/etc/passwd"
while IFS=: read -r f1 f2 f3 f4 f5 f6 f7
do
	# display fields using f1, f2,..,f7
	printf 'username: %s, shell: %s, homedir: %s\n' "$f1" "$f7" "$f6"
done < "$file"
