\#\!/bin/bash -eu

# This example explores the precedence of logical operators in bash.
#
# References:
# - https://unix.stackexchange.com/questions/88850/precedence-of-the-shell-logical-operators

false || true
echo "1"
false || { true && false; }
echo "after"
