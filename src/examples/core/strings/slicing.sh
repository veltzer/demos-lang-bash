\#\!/bin/bash -eu

# This is an example of how to cut up a string: prefix, suffix and middle.
#
# References:
# - http://tldp.org/LDP/abs/html/string-manipulation.html

string="0123456789ABCDE"

echo ${string:0} # the entire string
echo ${string:1} # without the first character
echo ${string:7} # from the 7'th character onward
echo ${string:7:3} # three characters from the first character
echo ${string:-4} # does not work, gives the entire string
echo ${string:(-4)} # the last four charactes of the string
echo ${string: -4} # this works too
echo ${string:0:-1} # remove the last character from the string
echo ${string:1:-1} # remove the first and last character from the string
