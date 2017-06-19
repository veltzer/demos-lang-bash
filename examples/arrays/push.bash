#!/bin/bash -u

<<'COMMENT'

This is an example of how to push to an array.
Pushing means adding an element at the begining of the array.

References:
- https://unix.stackexchange.com/questions/328882/how-to-add-new-value-to-beginning-of-array-in-bash

COMMENT

ARRAY=()
ARRAY+=('foo')
ARRAY+=('bar')

ARRAY=('first' "${ARRAY[@]}") 

echo "${ARRAY[@]}"
