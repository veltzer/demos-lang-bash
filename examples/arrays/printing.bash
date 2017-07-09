#!/bin/bash -u

# This is the most simple example of arrays: defining and printing them

y=(12 94 54)

echo "${y[@]}"
echo "${y[*]}"

# the next line does not work!!!
echo "$y"
