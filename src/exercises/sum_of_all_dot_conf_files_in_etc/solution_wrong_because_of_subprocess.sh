#!/bin/bash -eu
# losing the variable in the subshell is why this solution is named 'wrong'

find /etc -type f -and -name "*.conf" -exec ls -l {} \; 2> /dev/null | tr -s " " |
	cut -f 5 -d " " > sizes.txt

sum=0
# shellcheck disable=SC2002,SC2030  # teaching: piping into while runs it in a subshell, the pitfall shown here
cat sizes.txt | while read -r line
do
	((sum=sum+line))
done
# shellcheck disable=SC2031  # teaching: sum was modified in the subshell above
echo "sum is ${sum}"
