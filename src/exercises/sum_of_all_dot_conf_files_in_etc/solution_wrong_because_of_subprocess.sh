#!/bin/bash -eu
# losing the variable in the subshell is why this solution is named 'wrong'
# shellcheck disable=SC2030,SC2031

find /etc -type f -and -name "*.conf" -exec ls -l {} \; 2> /dev/null | tr -s " " |
	cut -f 5 -d " " > sizes.txt

sum=0
cat sizes.txt | while read -r line
do
	((sum=sum+line))
done
echo "sum is ${sum}"
