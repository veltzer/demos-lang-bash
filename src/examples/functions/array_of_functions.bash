#!/bin/bash -ue

# This example shows how to store an array of functions.
#
# References:
# - https://stackoverflow.com/questions/20361398/bash-array-of-functions

function a {
	echo "a"
}

function b {
	echo "b"
}

declare -a array
array+=(a)
array+=(b)

# run all functions
for i in "${!array[@]}"
do
	echo "running [${array[$i]}]"
	${array[$i]}
done
