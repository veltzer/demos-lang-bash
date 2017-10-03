#!/bin/bash -u

# This is an example of how to push to an array.
# Pushing means adding an element at the begining of the array.
#
# References:
# - https://unix.stackexchange.com/questions/328882/how-to-add-new-value-to-beginning-of-array-in-bash

my_array=()
my_array+=('foo')
my_array+=('bar')

my_array=('first' "${my_array[@]}") 

echo "${my_array[@]}"
