#!/bin/bash

# This is an example of how to use the 'caller' builtin in order to build
# a 'die' like function.
# References:
# http://wiki.bash-hackers.org/commands/builtin/caller
 
die() {
	local frame=0
	while caller $frame; do
		((frame++));
	done
	echo "$*"
	exit 1
}
 
f1() { die "*** an error occured ***"; }
f2() { f1; }
f3() { f2; }
 
f3
