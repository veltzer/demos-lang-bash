#!/bin/bash -ue

# This example shows how to read from a pipe
# The difference between the first example and the second is that
# in the first example the while loop which is the second command
# runs in a subshell. in the second example the while loop is the
# first command and so runs in the shell proper.

let "numlines=0"
dpkg --list | while IFS= read -r line
do
	let "numlines+=1"
	printf '%s\n' "$line"
done

IFS=$'\n'
IFS=" "
while read -r line
do
	echo "line is $line"
	printf '%s\n' "$line"
done <<< $(seq 10)
