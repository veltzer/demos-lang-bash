#!/bin/bash -ue

# This example shows how to get the size of an array in bash
#
# References:
# - https://www.cyberciti.biz/faq/bash-iterate-array/

# lets define an array
z=(
"one two"
"five six"
"three four"
)

echo "size of the array is ${#z[@]}"
echo "size of the array is ${#z[*]}"
