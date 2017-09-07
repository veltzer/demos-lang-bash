#!/bin/bash -ue

# This is an example of how to pop a value of a bash array
#
# References:
# - ???

array=("word a" "word b" "word c")
echo "${array[@]}"

# lets pop an element
val=${array[${#array[@]}-1]}
unset 'array[${#array[@]}-1]'
echo "val is [$val]"

echo "${array[@]}"
