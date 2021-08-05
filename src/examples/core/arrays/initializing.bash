#!/bin/bash -u

# This is a simple array example in bash.
# we create the array the bash way
#
# So how can we initialize an array:
# - just declare it (it will be empty by deafult)
# - declare it while assigning a single member
# - declare and then assign
# - just assign multiple values
# - add values
# - just assign single values
#
# NOTES:
# - arrays in bash can be sparse
#
# References:
# - http://tldp.org/LDP/abs/html/arrays.html

source src/includes/array.bashinc

# declare an array (it will be empty)
declare -xa my_array1
array_print my_array1

# declare an array and put data
declare -xa my_array2[0]="0 value"
declare -xa my_array2[1]="1 value"
declare -xa my_array2[2]="2 value"
array_print my_array2

# declare an array and then assign
declare -xa my_array3
my_array3[0]="0 value"
my_array3[1]="1 value"
my_array3[2]="2 value"
array_print my_array3

# just assign multiple values
# shellcheck disable=SC2034
my_array4=("0 value" "1 value" "2 value")
array_print my_array4

# add values
my_array5+=("0 value")
my_array5+=("1 value")
my_array5+=("2 value")
array_print my_array5

# assign single values
my_array6[0]="0 value"
my_array6[1]="1 value"
my_array6[2]="2 value"
array_print my_array6

# the two next lines are both wrong
# x=(56,23,14)
# #x=[56,23,14]

echo "assign from variable"
my_var="0 value 1 value 2 value"
my_array7=("$my_var")
array_print my_array7

echo "assign from variable (one value)"
my_var="one_value"
my_array8=("$my_var")
array_print my_array8
