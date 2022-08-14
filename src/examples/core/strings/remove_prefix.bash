#!/bin/bash -u

# This is an example of how to remove a prefix from a string, if it exists
# References:
# - https://stackoverflow.com/questions/16623835/remove-a-fixed-prefix-suffix-from-a-string-in-bash

# this is the removal of the prefix
str='hello world'
prefix='hel'
no_prefix=${str#$prefix}
echo "$no_prefix"

# this shows that if the prefix does not exist, nothing happens
str='hello world'
prefix='rld'
no_prefix=${str#$prefix}
echo "$no_prefix"
