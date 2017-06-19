#!/bin/bash -u

<<'COMMENT'

This is an example of how to append to an array in bash.

References:
- https://stackoverflow.com/questions/1951506/add-a-new-element-to-an-array-without-specifying-the-index-in-bash

COMMENT

ARRAY=()
ARRAY+=('foo')
ARRAY+=('bar')

echo "${ARRAY[@]}"
