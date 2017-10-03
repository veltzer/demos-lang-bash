#!/bin/bash -u

# This shows how to define a bash array on multiple lines

source src/includes/array.bashinc

my_array=(
"element one"
"element two"
"element three"
)

array_length my_array
array_print my_array
