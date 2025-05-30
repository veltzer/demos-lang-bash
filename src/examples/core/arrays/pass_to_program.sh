\#\!/bin/bash -eu

# This example explores how to pass an array as arguments to a program
# on the command line
# You can see from the output of cat that indeed cat is passed three arguments

my_array=(
	"first value"
	"second value"
	"third value"
)

cat "${my_array[@]}"
