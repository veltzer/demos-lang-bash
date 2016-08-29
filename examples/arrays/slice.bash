#!/bin/bash -u

<<'COMMENT'

This is an example of how to slice an array in bash.

References:
http://stackoverflow.com/questions/1335815/how-to-slice-an-array-in-bash

COMMENT

A=( "a" "b" "c" "d" "e" )
B=("${A[@]:1}")

echo "${A[@]}"
echo "${B[@]}"
