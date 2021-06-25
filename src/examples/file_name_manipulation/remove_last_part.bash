#!/bin/bash -u

# This is an example of how to remove the last part of a filename
# References:
# - https://unix.stackexchange.com/questions/28771/how-to-remove-last-part-of-a-path-in-bash

filename="/var/lib/foo.lock"
dirname "${filename}"
