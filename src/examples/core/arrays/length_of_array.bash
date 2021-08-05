#!/bin/bash -u

# This example shows how to find the length of an array in bash.
#
# NOTES:
# - as can be seen from the example there are two ways to find
# the length of an array in bash.
# - I do not know of any significant difference between the
# two ways.
#
# References:
# - https://unix.stackexchange.com/questions/193039/how-to-count-the-length-of-an-array-defined-in-bash

# lets define an array
z=(
	"one two"
	"five six"
	"three four"
)

echo "size of the array is ${#z[@]}"
echo "size of the array is ${#z[*]}"
