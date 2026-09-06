#!/bin/bash -eu
# the misspelled variable is the point: it shows -u catching it
# shellcheck disable=SC2034,SC2154

# example of using -u (above) and accessing an undefined variable...

somevar=7
echo "${someva}"
echo "hi"
