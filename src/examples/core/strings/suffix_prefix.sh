\#\!/bin/bash -eu

# This is an example of how to get a suffix and a prefix from a string.
# References:
# - http://stackoverflow.com/questions/16623835/bash-remove-a-fixed-prefix-suffix-from-a-string

str='hello world'

suffix='rld'
prefix='hel'

no_prefix=${str#$prefix}
no_suffix=${str%$suffix}

echo "$no_prefix"
echo "$no_suffix"
