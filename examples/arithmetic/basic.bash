#!/bin/bash -u

<<'COMMENT'

This is an example of basic arithmetic in the shell.

COMMENT

let "x=0"
echo $x
let "x=x+1"
echo $x
let "x+=1"
echo $x
# yes, the bash has ++
let "x++"
echo $x
