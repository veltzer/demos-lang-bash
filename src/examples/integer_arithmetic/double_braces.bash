#!/bin/bash -ue

# This example shows how you can do integer arithmetic with braces in bash.
#
# References:
# - https://ryanstutorials.net/bash-scripting-tutorial/bash-arithmetic.php

x=0
x=$((x+1))
x=$((x+1))
echo $x

y=5
y=$((y*5))
echo $y
