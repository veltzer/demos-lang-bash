#!/bin/bash -u

# This example shows how you can switch stdout and stderr for a program.
# This is useful in a cade in which you want to pipe errors out and not output.
#
# References:
# - https://stackoverflow.com/questions/13299317/io-redirection-swapping-stdout-and-stderr

echo we will now see errors instead of output
find /etc 2> /dev/null 3>&2 2>&1 1>&3 | head
echo simpler
find /etc 2>&1 1> /dev/null | head
