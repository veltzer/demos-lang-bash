#!/bin/bash -ue

# This example explores how to get the results of bash globbing
# into a bash array.
#
# NOTES:
# - copmgen -G must be given it's argument in quotes (otherwise
# bash globbing will kick in).
# - the output of bash's glob is sorted while the output of
# compgen -G isn't.

A=(/etc/a*)
echo "${A[@]}"

# this approach does not work as compgen output is via stdout
# and needs to be collected...
A=(compgen -G "/etc/a*")
echo "${A[@]}"

A=($(compgen -G "/etc/a*"))
echo "${A[@]}"
