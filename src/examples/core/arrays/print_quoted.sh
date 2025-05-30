\#\!/bin/bash -eu

# This is an example of how to take a bash array and print it quoted with efficiency.
# The idea of efficiency is not to invoke a subshell.
#
# References:
# - https://stackoverflow.com/questions/12985178/bash-quoted-array-expansion

my_array=(
	"first value"
	"second value"
	"third value"
)

printf -v my_var "'%s' " "${my_array[@]}"
echo "my_var is [$my_var]"

my_var="${my_array[*]@Q}"
echo "my_var is [$my_var]"
