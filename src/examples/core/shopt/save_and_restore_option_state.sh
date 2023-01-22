#!/bin/bash -ux

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
