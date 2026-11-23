#!/bin/bash -eu

# example of using -u (above) and accessing an undefined variable...

{
	# shellcheck disable=SC2034  # teaching: somevar is set but the misspelled name is read instead
	somevar=7
}
# shellcheck disable=SC2154  # teaching: the misspelled variable is the point, -u catches it
echo "${someva}"
echo "hi"
