#!/bin/bash -u

# This example explores the short circuit feature of bash boolean operators.
#
# Notes:
# - bash does have a short circuit feature.
# - sometimes short circuiting is what you want.
# - if this is not the case then make sure to execute both parts
# of the logical condition and only then evaluate the results.
#
# A weird this about this example. The third command actually returns a false
# error code but the script continues to run although we are running in error
# mode where if an error occurs the script should stop.

true || echo "where is this?"
echo $?
false || echo "you will see this"
echo $?
false && echo "where is this?"
echo $?
true && echo "you will see this"
echo $?
