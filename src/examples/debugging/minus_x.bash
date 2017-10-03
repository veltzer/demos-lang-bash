#!/bin/bash -uvx

# This example shows how to make a bash script verbose.
# The idea is to turn on the -x flag.
# This could be done at any point in the script using 'set -x'
# to turn debugging on and 'set +x' to turn debugging off.
# or this could be done as in this example, at the shbang line.
# You can also customize what will be printed before the lines
# being executed using the 'PS4' variable as below.
# In the following example each line will be preceeded with it's
# line number.

PS4='$LINENO '
echo "Hello, World!"
