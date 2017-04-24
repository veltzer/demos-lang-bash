#!/bin/bash -u

<<'COMMENT'

This example shows how to check if a glob patten has matches.

References:
- http://stackoverflow.com/questions/2937407/test-whether-a-glob-has-any-matches-in-bash

COMMENT

source ../../includes/common.bash

if compgen -G "/etc/markveltzer*" > /dev/null; then
	die "problem"
else
	echo "yes, markveltzer has no globs"
fi

if compgen -G "/etc/ssh*" > /dev/null; then
	echo "yes, ssh has globs"
else
	die "problem"
fi
