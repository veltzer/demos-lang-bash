#!/bin/bash -u

# This example shows how to check if an array is empty
#
# References:
# - https://serverfault.com/questions/477503/check-if-array-is-empty-in-bash/477506

array_with_elements=(
	"one two"
	"five six"
	"three four"
)
array_without_elements=(
)

if [ "${#array_with_elements[@]}" -eq 0 ]
then
	echo "array is empty"
else
	echo "array is not empty"
fi
if [ "${#array_without_elements[@]}" -eq 0 ]
then
	echo "array is empty"
else
	echo "array is not empty"
fi
