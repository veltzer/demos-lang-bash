#!/bin/bash
# this script does not have -u on purpose

<<'COMMENT'

This shows how to make bash more strict in that it will error
and will stop on any undefined variable that requires expansion.
This shows how to make bash more strict
If you remove the "set -e" and "set +e" then the script
will continue even though the "false" command fails.

More thing to make bash more strict:

give errors when commands fail:
	set -e / set +e
give errors when the shell is required to expand undefined variabled:
	set -u / set +u
give errors when pipes fail:
	set -o pipefail:

To sum it up, you can begin your script with:
	set -euo pipefail

References:
http://redsymbol.net/articles/unofficial-bash-strict-mode/

COMMENT

echo "before $UNDEFINED"
set -u
echo "in $UNDEFINED"
set +u
echo "after $UNDEFINED"
