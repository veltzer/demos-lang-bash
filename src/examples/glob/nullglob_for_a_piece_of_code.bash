#!/bin/bash -u

# This example shows how to use nullglob to get strict globbing
# and to enable and disable it just for a small piece of code.
#
# References:
# - https://stackoverflow.com/questions/9126060/is-there-an-easy-way-to-set-nullglob-for-one-glob

shopt -s nullglob
for x in /tmp/doesntexist*.foo
do
	echo $x
done
shopt -u nullglob

# in order to return nullglob to it's former state we need to store
# it's previous state.

function save_nullglob() {
	nullglob=$(shopt -p nullglob)
	shopt -s nullglob
}

function restore_nullglob() {
	$nullglob
}

save_nullglob
for x in /tmp/doesntexist*.foo
do
	echo $x
done
restore_nullglob
