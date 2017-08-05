#!/bin/bash -u

# This shows how to define a bash array on multiple lines

my_array=(
"element one"
"element two"
"element three"
)

for elem in "${my_array[@]}"
do
	echo $elem
done
