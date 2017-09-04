#!/bin/bash -ue

# This example shows how to collect output of processes in bash.
# Basically there are two ways: backticks and $().
# References:
# - https://www.cyberciti.biz/faq/unix-linux-bsd-appleosx-bash-assign-variable-command-output/

x=$(date)
y=`date`
echo "x is $x"
echo "y is $y"
