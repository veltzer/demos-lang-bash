#!/bin/bash -eu

# This example shows that ':' is an actual command (builtin) which accepts arguments,
# does nothing and changes '$?' to '0'.
# This is very similar to 'true' (which is also a builtin).
# 'false' is similar except '$?' is changed to '1'.
# Diffences between '#' and ':'
# - '#' does not change '$?' while ':' does change '$?' to '0'.
# - '#' cannot be followed by another command on the same line with ';' while ':' can.

# this is s comment; this command will not be executed

# This example inspects $? after commands that fail, which errexit (the -e
# in the shebang) would abort on, so it is turned off here.
set +e
false
: bla bla bla
# shellcheck disable=SC2181  # teaching: the point is to inspect $? right after ':' to show it was reset to 0
if [[ $? -ne 0 ]]
then
	echo "ERROR"
fi

true
: bla bla bla
# shellcheck disable=SC2181  # teaching: the point is to inspect $? right after ':' to show it was reset to 0
if [[ $? -ne 0 ]]
then
	echo "ERROR"
fi

false
# bla bla bla
if [[ $? -ne 1 ]]
then
	echo "ERROR"
fi
