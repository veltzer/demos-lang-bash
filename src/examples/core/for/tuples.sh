#!/bin/bash -eu
# splitting the comma-separated tuple by word splitting is the technique shown

# This example shows a simple for loop over a list of elements known
# in advance.

for x in red,4 yellow,5 green,6
do
	# shellcheck disable=SC2248  # teaching: relies on word splitting of the unquoted expansion
	set ${x//,/ }
	echo "$1" "$2"
done

for x in apple,green strawberry,red banana,yellow
do
	# shellcheck disable=SC2206  # teaching: relies on word splitting of the unquoted expansion
	xsplit=(${x//,/ })
	echo "${xsplit[0]}s are ${xsplit[1]}"
done
