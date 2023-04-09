#!/bin/bash -u

# This is an example of how to do long variables in bash
#
# References:
# - https://unix.stackexchange.com/questions/340718/how-do-i-bring-heredoc-text-into-a-shell-script-variable

read_it() {
	VAR1=$(cat)
}
read_it <<EOF
first line
second line
third line
EOF
echo "$VAR1"

IFS='' read -d '' -r VAR2 <<EOF
first line
second line
third line
EOF
echo "$VAR2"

nl="
"
read_heredoc(){
	VAR3=""
	while IFS="$nl" read -r line; do
		VAR3="$VAR3$line$nl"
	done 
}
read_heredoc <<EOF
first line
second line
third line
EOF
echo "$VAR3"
