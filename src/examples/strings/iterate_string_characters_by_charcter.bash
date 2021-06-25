#!/bin/bash -u

# This is an example of how to iterate strings one character at a time

string='encyclopedia'

len="${#string}"

# with a simple while loop
((i=0))
while [ "$i" -lt "$len" ]
do
	echo "${string:$i:1}"
	((i++))
done

echo "==============================="
# with seq(1)
for i in $(seq 0 $len)
do
	echo "${string:$i:1}"
done
