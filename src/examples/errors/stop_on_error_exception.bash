#!/bin/bash -e

# This is an example of how to make bash stricter.
# The "-e" flag above makes bash stop after the first command
# returns an error code

echo "hello"
if [ false ]
then
	echo "error happened"
fi
echo "goodbye"
