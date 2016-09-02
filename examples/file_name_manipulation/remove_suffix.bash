#!/bin/bash -u

<<'COMMENT'

This is an example of how to remove the suffix off a file name in bash.

The first method below is recommended because it does not call any
out-of-shell executables and does not need to know the suffix.

COMMENT

filename="/etc/foo.bar"
no_suffix_1=${filename%.*}
no_suffix_2=$(dirname $filename)/$(basename $filename .bar)
echo $no_suffix_1
echo $no_suffix_2
