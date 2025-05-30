\#\!/bin/bash -eu

# This example shows why "set -e" or -e at the shbang line are bad for you
# It turns out that the specific example presented here actually works well
# and does not prove that -e is bad for you.
#
# References:
# - http://mywiki.wooledge.org/BashFAQ/105

set -e

# This should fail because [ -d /nonexisting ] should return error code...
if [ -d /nonexisting ]
then
	echo "yes"
else
	echo "no"
fi

i=0
let i++
echo "i is $i"
