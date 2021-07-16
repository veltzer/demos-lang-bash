#!/bin/bash -u

# This is an example of how to remove the last n characters from a string in bash
# References:
# - https://stackoverflow.com/questions/27658675/how-to-remove-last-n-characters-from-a-string-in-bash

str='hello world'

# with a constant value

first_word=${str::-6}
echo "[$first_word]"

# with a variable

num_to_remove=6
first_word=${str::-${num_to_remove}}
echo "[$first_word]"
