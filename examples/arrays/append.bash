#!/bin/bash -u

<<'COMMENT'

This is an example of how to append to an array in bash.

References:

COMMENT

ARRAY=()
ARRAY+=('foo')
ARRAY+=('bar')

echo "${ARRAY[@]}"
