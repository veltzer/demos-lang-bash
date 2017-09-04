#!/bin/bash -ue

# This example shows how to write a 'C' like for loop in bash.

arr=(red "yellow green" blue)
len=${#arr[@]}

for (( i=0; i<${len}; i++ ));
do
	echo "${arr[$i]}"
done
