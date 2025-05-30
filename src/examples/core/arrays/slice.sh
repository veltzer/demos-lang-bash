\#\!/bin/bash -eu

# This is an example of how to slice an array in bash.
# Run this example with command line arguments like this:
# $ ./slice.bash 1 2 3 4 5 6
# References:
# http://stackoverflow.com/questions/1335815/how-to-slice-an-array-in-bash

echo "${@:3:2}"
A=( "a" "b" "c" "d" "e" "f" "g")
B=("${A[@]:3}")
C=("${A[@]:3:2}")

echo "${A[@]}"
echo "${B[@]}"
echo "${C[@]}"
