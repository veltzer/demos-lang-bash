\#\!/bin/bash -eu

# This shows how to process a variable of list type, entry by entry.
# References:
# - http://www.cyberciti.biz/faq/unix-howto-read-line-by-line-from-file/

list=$(dpkg --list php\* | awk '/ii/{print $2}')
while IFS= read -r line
do
	printf '%s\n' "$line"
done <<< "$list"
