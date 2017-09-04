#!/bin/bash -ue

# This is an example of how to remove the suffix off a file name in bash.
# The first method below is recommended because it does not call any
# out-of-shell executables and does not need to know the suffix.

filename="/zoo/foo.bar/filename.tar.gz"
# very easy, return only the last suffix
echo ${filename%.*}
# very easy, return everything aside from everything after the first dot (could be dangerous)
echo ${filename%%.*}
# very cumbersome and you need to know the suffix
echo $(dirname $filename)/$(basename $filename .tar.gz)
# get the basename first and only then remove everything from the first dot onward
e_basename=${filename##*/}
e_dirname=${filename%/*}
echo ${e_basename}
echo ${e_dirname}
