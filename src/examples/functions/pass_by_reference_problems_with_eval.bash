#!/bin/bash -u

# This example shows how to pass variables by reference to bash function
# corretly. This is trickier than it sounds.
#
# References:
# - http://www.fvue.nl/wiki/Bash:_Passing_variables_by_reference

f() { local b; g b; echo $b; }
g() { local b; eval $1=bar; }  #  WRONG, although it looks ok: b=bar
f
