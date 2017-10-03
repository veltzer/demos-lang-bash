#!/bin/bash -u

# This example explores how to pass an array as arguments to a program
# on the command line

my_array=(
	"first value"
	"second value"
	"third value"
)

cat "${my_array[@]}"
