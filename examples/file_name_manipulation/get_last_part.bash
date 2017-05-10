#!/bin/bash -u

<<'COMMENT'

This is an example of how to get the last part of a directory

References:
- http://stackoverflow.com/questions/13767252/ubuntu-bash-script-how-to-split-path-by-last-slash

COMMENT

dirname="/var/lib"
echo $(basename $dirname)
