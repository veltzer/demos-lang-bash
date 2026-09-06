#!/bin/bash -eu

find /etc -maxdepth 2 -type f -readable -exec grep -l "backup" {} \; -print0 2> /dev/null | xargs -0 ls -l | tr -s " " | cut -f 5 -d " " > sizes.txt

sum=0
while read -r line
do
	((sum=sum+line))
done < sizes.txt
echo "sum is ${sum}"
