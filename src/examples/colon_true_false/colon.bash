#!/bin/bash -u

# This example shows that ':' is an actual command (builtin) which accepts arguments,
# does nothing and changes '$?' to '0'.
# This is very similar to 'true' (which is also a builtin).
# 'false' is similar except '$?' is changed to '1'.
# Diffences between '#' and ':'
# - '#' does not change '$?' while ':' does change '$?' to '0'.
# - '#' cannot be followed by another command on the same line with ';' while ':' can.

# this is s comment; this command will not be executed

false
: bla bla bla
if [[ $? -ne 0 ]]
then
	echo "ERROR"
fi

true
: bla bla bla
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
