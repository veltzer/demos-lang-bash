#!/bin/bash -u

# This is an example showing the different ways to initalize an associative array
# in bash.
#
# NOTES:
# - just starting to put values into an associative array does not work.
# - you can declared an associative array and put values into it with just
# one line of code (see below).
#
# References:
# - http://www.artificialworlds.net/blog/2012/10/17/bash-associative-array-examples/

source src/includes/assoc.bashinc

# one line for declaration and data
declare -A map1=( ["ke y1"]="val ue1" ["ke y2"]="val ue2" )
assoc_print map1

# first declare and then add values
declare -A map2
map2["ke y1"]="val ue1"
map2["ke y2"]="val ue2"
assoc_print map2

# just put values, this does not work
# map3["ke y1"]="val ue1"
# map3["ke y2"]="val ue2"
# assoc_print map3
