#!/bin/bash -u

# This shows how to get your own script name
#
# References:
# - https://stackoverflow.com/questions/192319/how-do-i-know-the-script-file-name-in-a-bash-script

me=`basename "$0"`
echo "$me"

me="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "$me"
