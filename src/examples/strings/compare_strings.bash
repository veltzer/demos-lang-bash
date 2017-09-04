#!/bin/bash -ue

# This is an example of how to compare strings

a="foo"
b="bar"
[ "$a" = "$b" ]
echo $?
