#!/bin/bash -u

<<'COMMENT'

this is an example that tests whether a variable is set or not.

References:
http://stackoverflow.com/questions/3601515/how-to-check-if-a-variable-is-set-in-bash

COMMENT

source ../../includes/common.bash

somevar=7
if [ -z ${somevar+x} ]; then
	die "problem"
fi

if [ ! -z ${unsetvar+x} ]; then
	die "problem"
fi
