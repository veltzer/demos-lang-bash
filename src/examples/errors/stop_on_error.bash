#!/bin/bash -ue

# This is an example of how to make bash stricter.
# The "-e" flag above makes bash stop after the first command
# returns an error code

echo "hello"
false
echo "goodbye"
