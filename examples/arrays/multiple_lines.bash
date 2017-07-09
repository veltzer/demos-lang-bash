#!/bin/bash -u

# This shows how to write a bash list on multiple lines

my_list=(
"element one"
"element two"
"element three"
)

for elem in "${my_list[@]}"
do
	echo $elem
done
