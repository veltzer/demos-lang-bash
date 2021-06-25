#!/bin/bash -u

# This example shows the advantage of the:
#	[command] | while read
# pattern over the:
#	[command] | xargs
# pattern
# Can you do the following with xargs(1)?

((x=0))
IFS=" "
while read -r line
do
	((x=x+line))
done <<< $(seq 10)
echo "$x"
