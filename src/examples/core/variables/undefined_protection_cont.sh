#!/bin/bash -eu
# the misspelled variable is the point: it shows -u catching it
# shellcheck disable=SC2034,SC2154

# this is the sequel to the previous example but this time running without the -u...
# as you can see the script does not stop and no error is printed.
# conclusion: better run with -u.

somevar=7
echo "${someva}"
echo "hi"
