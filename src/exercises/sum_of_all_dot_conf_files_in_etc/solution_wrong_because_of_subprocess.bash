#!/bin/bash -eu

find /etc -type f -and -name "*.conf" -exec ls -l {} \; 2> /dev/null | tr -s " " |
	cut -f 5 -d " " > sizes.txt

sum=0
cat sizes.txt | while read -r line
do
	let "sum=sum+line"
done
echo "sum is $sum"
