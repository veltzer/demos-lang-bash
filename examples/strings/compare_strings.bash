#!/bin/bash -u

<<'COMMENT'

This is an example of how to compare strings

References:
- 

COMMENT

a="foo"
b="bar"
[ "$a" = "$b" ]
echo $?
