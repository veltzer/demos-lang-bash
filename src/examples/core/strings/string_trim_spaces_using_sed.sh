\#\!/bin/bash -eu

# This is an example of how to trim spaces from a bash variable using sed.
# References:
# http://stackoverflow.com/questions/369758/how-to-trim-whitespace-from-bash-variable

x=' this is a string '
echo "--$x--"
x1=$(echo "$x" | tr -d ' ')
echo "--${x1}--"
# shellcheck disable=2001
x2=$(echo "$x" | sed 's/ *$//')
echo "--${x2}--"
# shellcheck disable=2001
x3=$(echo "$x" | sed 's/^ *//')
echo "--${x3}--"
# shellcheck disable=2001
x4=$(echo "$x" | sed 's/ * //')
echo "--${x4}--"
x5=$(echo "$x" | sed -e 's/ *$//' -e 's/^ *//')
echo "--${x5}--"
