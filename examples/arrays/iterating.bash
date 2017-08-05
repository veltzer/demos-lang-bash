#!/bin/bash -ue

# This example shows how to iterate an array in bash.
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

echo "this is the right way to do it"
for elem in "${z[@]}"
do
	echo $elem
done

echo "this is the wrong way (with star)"
for elem in "${z[*]}"
do
	echo $elem
done

echo "this is the WRONG way to do it! (gives all as one element)"
for elem in "${z[*]}"
do
	echo $elem
done

echo "another WRONG way to do it! (breaks down spaces)"
for elem in ${z[*]}
do
	echo $elem
done

echo "another WRONG way to do it! (only covers first element and breaks it down)"
for elem in $z
do
	echo $elem
done

echo "another WRONG way to do it! (only covers first element)"
for elem in "$z"
do
	echo $elem
done
