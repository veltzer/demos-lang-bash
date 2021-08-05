#!/bin/bash -u

# This example explores how to get the results of bash globbing
# into a bash array.
#
# NOTES:
# - the best method is the first one but the disadvantage
# is that if there are no matches then it gives an array
# with the pattern
# - copmgen -G must be given it's argument in quotes (otherwise
# bash globbing will kick in).
# - the output of bash's glob is sorted while the output of
# compgen -G isn't.
# - the problem with copmgen is that you must run it in a subshell
# to collect it's output and this is slow.

A=(/etc/a*)
echo "${A[@]}"

A=(/etc/notmatch*)
echo "${A[@]}"

# this approach does not work as compgen output is via stdout
# and needs to be collected...
A=(compgen -G "/etc/a*")
echo "${A[@]}"

A=($(compgen -G "/etc/a*"))
echo "${A[@]}"
