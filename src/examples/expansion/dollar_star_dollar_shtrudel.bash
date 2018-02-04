#!/bin/bash -u

# This example explores how a function in bash can pass all or some of it's own arguments
# correctly to a sub function.
# The four candidates are:
# - "$@"
# - $@
# - $* 
# - "$*"
# This example clearly shows that only the first one is the correct choice.

function count() {
	if [ $# -ne 3 ]
	then
		echo "problem with $1"
	else
		echo "all is ok with $1"
	fi
}

function up1() {
	if [ $# -ne 2 ]
	then
		echo "problem"
	fi
	count \"\$\@\" "$@"
}

function up2() {
	if [ $# -ne 2 ]
	then
		echo "problem"
	fi
	count \$\@ $@
}

function up3() {
	if [ $# -ne 2 ]
	then
		echo "problem"
	fi
	count \"\$\*\" "$*"
}

function up4() {
	if [ $# -ne 2 ]
	then
		echo "problem"
	fi
	count \$\* $*
}

up1 "this is" "an example"
up2 "this is" "an example"
up3 "this is" "an example"
up4 "this is" "an example"
