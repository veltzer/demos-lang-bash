#!/bin/bash -ue

# This is an example that show how to test whether a variable is set or not.
#
# References:
# - http://stackoverflow.com/questions/3601515/how-to-check-if-a-variable-is-set-in-bash

if declare -p myvar 2> /dev/null > /dev/null
then
	echo "ERROR"
fi
myvar=7
if ! declare -p myvar 2> /dev/null > /dev/null
then
	echo "ERROR"
fi

# test if 'somevar' is not set
if ! [ -z ${somevar+x} ]
then
	echo "ERROR"
fi
somevar=7
# test if 'somevar' is set
if ! [ -n "${somevar}" ]
then
	echo "ERROR"
fi
# even shorter, -n is the default test
if ! [ "${somevar}" ]
then
	echo "ERROR"
fi
unset somevar
# this should not happen
if [ "${somevar-}" ]
then 
	echo "ERROR"
fi

if [ ! -z ${unsetvar+x} ]
then
	echo "ERROR"
fi
if [ -n "${unsetvar-}" ]
then
	echo "ERROR"
fi
if [ ! -n ${somevar+x} ]
then
	echo "ERROR"
fi
