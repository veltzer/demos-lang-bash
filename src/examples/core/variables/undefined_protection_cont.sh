#!/bin/bash -eu

# this is the sequel to the previous example but this time running without the -u...
# as you can see the script does not stop and no error is printed.
# conclusion: better run with -u.

{
	# shellcheck disable=SC2034  # teaching: somevar is set but the misspelled name is read instead
	somevar=7
}
# shellcheck disable=SC2154  # teaching: the misspelled variable is the point, -u catches it
echo "${someva}"
echo "hi"
