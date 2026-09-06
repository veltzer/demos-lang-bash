#!/bin/bash -eu
# array_print takes the array by name (local -n), which shellcheck cannot follow
# shellcheck disable=SC2034

# This example shows how to initialize an array from a glob pattern
#
# References:
# - http://tldp.org/LDP/abs/html/arrays.html

source src/includes/array.bashinc

files_array=(/etc/*.conf)
array_print files_array
