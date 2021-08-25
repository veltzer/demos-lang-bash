#!/bin/bash -u

# This is an example of how to make bash stricter.
# The "set -e" (or setting -e at the shbang)
# makes bash stop after the first command
# returns an error code

set -e
echo "hello"
false
echo "goodbye"
