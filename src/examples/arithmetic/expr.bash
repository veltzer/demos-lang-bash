#!/bin/bash -ue

# This is an example of how to use the expr(1) command line utility
#
# NOTES:
# - expr(1) is not a shell builtin and is part of the 'coreutils' package.
# - this means that expr is slower to use (much more than let).
# - expr(1) can only do integer arithmetic.
#
# References:
# -

echo $(expr 2 + 2)
# the next line will cause an error
# echo $(expr 2.1 + 2.1)
