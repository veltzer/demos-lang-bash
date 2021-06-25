#!/bin/bash -u

# This is an example of how to iterate strings one character at a time

string='encyclopedia'

len="${#string}"
((i=0))
while [ "$i" -lt "$len" ]
do
	echo "${string:$i:1}"
	((i++))
done
