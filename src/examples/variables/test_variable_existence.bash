#!/bin/bash -u

# This is an example that show how to test whether a variable is set or not.
#
# References:
# http://stackoverflow.com/questions/3601515/how-to-check-if-a-variable-is-set-in-bash

source ../../includes/common.bash

if ! declare -p myvar 2> /dev/null > /dev/null
then
	echo "yes, myvar is not set"
fi
myvar=7
if declare -p myvar 2> /dev/null > /dev/null
then
	echo "yes, myvar is set"
fi

# test if 'somevar' is not set
if [ -z ${somevar+x} ]
then
	echo "yes, somevar is not set"
fi
somevar=7
# test if 'somevar' is set
if [ -n "${somevar}" ]
then
	echo "yes, somevar is set"
fi
# even shorter, -n is the default test
if [ "${somevar}" ]
then
	echo "yes, somevar is set"
fi
unset somevar
# this should not happen
if [ "${somevar-}" ]
then 
	die "problem 1"
else
	echo "yes, somevar is not set"
fi

if [ ! -z ${unsetvar+x} ]
then
	die "problem 2"
fi
if [ -n "${unsetvar-}" ]
then
	die "problem 3"
fi
if [ ! -n ${somevar+x} ]
then
	die "problem 4"
fi
