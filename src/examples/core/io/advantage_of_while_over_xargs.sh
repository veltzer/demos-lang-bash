#!/bin/bash -eu

# This example shows the advantage of the:
#	[command] | while read
# pattern over the:
#	[command] | xargs
# pattern
# Can you do the following with xargs(1)?

numbers=$(seq 10)
((x=0))
IFS=" "
while read -r line
do
	((x=x+line))
done <<< "${numbers}"
echo "${x}"
