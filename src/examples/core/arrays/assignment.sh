\#\!/bin/bash -eu

# This example shows how to assign one array to the other in bash.
#
# NOTES:
# - straight up assignment (array_two=array_one) does not work. see below.

a=("value with spaces" 2 3)
b=("${a[@]}")
c=("${a[*]}")
d=a
echo "${a[@]}"
echo "${b[@]}"
echo "${c[@]}"
echo "${d[@]}"
