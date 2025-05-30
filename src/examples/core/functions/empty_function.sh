\#\!/bin/bash -eu

# This example explores writing an empty function
# The main point is that you cannot write a completely empty
# function in bash as it is a syntax error. If you want an empty
# function then use the ':' bash builtin which does nothing.
# You may think that you can get away by writing a function that
# contains only comments. You cant.
#
# References:
# - https://stackoverflow.com/questions/30998558/empty-function-in-bash

function func() {
	:
}

func
