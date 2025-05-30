\#\!/bin/bash -eu

# This example shows how to make a bash script verbose.
# The idea is to turn on the -x flag.
# This could be done at any point in the script using 'set -x'
# to turn debugging on and 'set +x' to turn debugging off.
# or this could be done also at the shbang line.
# You can also customize what will be printed before the lines
# being executed using the 'PS4' variable as below.
# In the following example each line will be preceeded with it's
# line number.
#
# References:
# - http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_02_03.html

set -x

PS4='$LINENO '
echo "Hello, World!"
