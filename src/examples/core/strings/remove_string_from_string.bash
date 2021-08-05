#!/bin/bash -u

# This is an example of how to remove a string from another string.
#
# TODO:
# I still need to explain how this works as regard the spaces.
#
# References:
# - https://stackoverflow.com/questions/20783187/remove-the-all-occurences-of-a-word-from-a-string-in-bash-shell-linux?lq=1

str='one two one three one'

removed="${str//one/}"

echo "$removed"
