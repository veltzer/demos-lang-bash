\#\!/bin/bash -eu

# This example examines how can you redirect all stdout for an entire script.
#
# References:
# - https://stackoverflow.com/questions/314675/how-do-i-redirect-the-output-of-an-entire-shell-script-within-the-script-itself

echo "before"
exec > /dev/null
echo "between"
exec > /dev/tty
echo "after"
