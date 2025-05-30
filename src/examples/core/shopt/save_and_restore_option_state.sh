\#\!/bin/bash -eu

# Sometimes you want to write a piece of code and make sure that some bash options
# are set in a certain way in it (-e, -x etc)
# The problem is how to return the options to the way they were before the piece of code started?
#
# References:
# - https://unix.stackexchange.com/questions/310957/how-to-restore-the-value-of-shell-options-like-set-x

set -e
echo "a"
state_of_errexit=$(shopt -p -o errexit)
echo "${state_of_errexit}"
set -e
echo "in here 1"
false
echo "in here 2"
eval "${state_of_errexit}"
echo "in here 3"
false
echo "You shouldnt get here!"
