#!/bin/bash -ue

# This example shows how to make bash more strict
# by adding markers in the code where you want to be more strict.
# The idea is to add "set -e" and "set +e" on a piece of your
# code when you want to make the failure of any command fail
# the entire script.
#
# If you remove the "set -e" and "set +e" then the script
# will continue even though the "false" command fails.
# More thing to make bash more strict:
# give errors when commands fail:
#	set -e / set +e
#	set -o errexit
# give errors when the shell is required to expand undefined variabled:
#	set -u / set +u
#	set -o nounset
# give errors when pipes fail:
#	set -o pipefail:
# To sum it up, you can begin your script with:
#	set -o errexit
#	set -o pipefail
#	set -o nounset
# References:
# http://redsymbol.net/articles/unofficial-bash-strict-mode/
# http://kvz.io/blog/2013/11/21/bash-best-practices/

echo before
set -e
false
set +e
echo after
