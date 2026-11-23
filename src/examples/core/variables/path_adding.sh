#!/bin/bash -eu

# This demo shows how to add to the path variable in a way that does
# not add junk.

# make functions called inside $(...) keep "set -e"
shopt -s inherit_errexit

function path_add {
	if [[ "$1" = "" ]]
	then
		echo "$2"
	else
		echo "$1:$2"
	fi
}

FOO=""
echo "${FOO}"
FOO=$(path_add "${FOO}" IAddedThis)
echo "${FOO}"

BAR="somevalue"
echo "${BAR}"
BAR=$(path_add "${BAR}" IAddedThis)
echo "${BAR}"
