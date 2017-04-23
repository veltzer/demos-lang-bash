#!/bin/bash -u

<<'COMMENT'

This is an example of how to remove the last part of a filename

References:
- https://unix.stackexchange.com/questions/28771/how-to-remove-last-part-of-a-path-in-bash

COMMENT

filename="/var/lib/foo.lock"
echo $(dirname ${filename})
