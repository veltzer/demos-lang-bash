#!/bin/bash -ue

# This is an example that shows how to concatenate strings in bash.
#
# References:
# - https://stackoverflow.com/questions/4181703/how-to-concatenate-string-variables-in-bash

a="foo"
b="bar"
c=$a$b
echo "c is [$c]"
