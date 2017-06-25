#!/bin/bash -u

<<'COMMENT'

This is an example of how to trim spaces from a bash variable using only bash.

References:
- 

COMMENT

x=' this is a string '
echo "--$x--"
x1=${x%%[[:space:]]}
echo "--${x1}--"
x2=${x##[[:space:]]}
echo "--${x2}--"
