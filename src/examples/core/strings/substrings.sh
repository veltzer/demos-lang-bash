\#\!/bin/bash -eu

# This is an example of how to extract substrings in bash
# References:
# - https://stackabuse.com/substrings-in-bash

string='encyclopedia'

# extract from location till the end
echo "${string:5}"
# extract from location with specificed number of characters
echo "${string:5:2}"
