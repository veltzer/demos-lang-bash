#!/bin/bash -u

# This is an example of how to compare strings

a="foo"
b="bar"
[ "$a" = "$b" ]
echo $?
[ "$a" != "$b" ]
echo $?
