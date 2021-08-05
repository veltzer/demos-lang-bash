#!/bin/bash -u

# This shows how to define a bash array on multiple lines

source src/includes/array.bashinc
source src/includes/fakeuse.bashinc

my_array=(
	"element one"
	"element two"
	"element three"
)

fakeuse "${my_array[@]}"
#echo "${my_array[*]}"
#if array_is_array my_array
#then
#	echo "yes it's an array"
#fi
array_print my_array
