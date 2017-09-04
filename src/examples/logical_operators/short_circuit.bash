#!/bin/bash -ue

# This example explores the short circuit feature of bash boolean operators.
# Notes:
# - bash does have a short circuit feature.
# - sometimes short circuiting is what you want.
# - if this is not the case then make sure to execute both parts
# of the logical condition and only then evaluate the results.

true || echo "where is this?"
false || echo "you will see this"
false && echo "where is this?"
true && echo "you will see this"
