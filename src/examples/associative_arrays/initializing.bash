#!/bin/bash -u

# This is an example showing the different ways to initalize an associative array
# in bash.
#
# References:
# - http://www.artificialworlds.net/blog/2012/10/17/bash-associative-array-examples/

source ../../includes/assoc.bash

# one line for declaration and data
declare -A map1=( ["ke y1"]="val ue1" ["ke y2"]="val ue2" )
assoc_print map1

# first declare and then add values
declare -A map2
map2["ke y1"]="val ue1"
map2["ke y2"]="val ue2"
assoc_print map2
