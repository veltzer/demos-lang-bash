#!/bin/bash -ue

# This example shows how to make bash more strict
# by making every command in the entire script that fails
# fail the script.
# The idea is to put the -e which you see in the shbang
# line of this script.
#
# References:
# - http://redsymbol.net/articles/unofficial-bash-strict-mode/
# - http://kvz.io/blog/2013/11/21/bash-best-practices/

echo before
false
echo after
