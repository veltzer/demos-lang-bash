#!/bin/bash -ue

# This shows how to define a bash array on multiple lines

my_array=(
"element one"
"element two"
"element three"
)

echo "${my_array[@]}"
