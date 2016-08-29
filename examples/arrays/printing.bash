#!/bin/bash -u

<<'COMMENT'

This is the most simple example of arrays: defining and printing them

COMMENT

y=(12 94 54)

echo "${y[@]}"
echo "${y[*]}"

# does not work!!!

echo $y
