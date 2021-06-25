#!/bin/bash -u

# This is an example of how to know the string length in bash.
#
# References:
# - https://linuxhint.com/length_of_string_bash/

strvar='hello world'

# first is the best way and probably fastest
echo "${#strvar}"
expr length "$strvar"
expr "${strvar}" : '.*'
echo -n "$strvar" | wc -c
echo -n "$strvar" | awk '{print length}'
