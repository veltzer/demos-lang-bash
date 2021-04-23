#!/bin/bash -eu

if test $# -ne 1
then
	echo "you must pass exactly one argument (file or folder) to this script..."
	exit 1
fi

arg=$1

if test -d $arg
then
	ls $arg
	exit 0
fi

if test -f $arg
then
	cat $arg
	exit 0
fi

echo "The argument is neither a file nor a folder, exiting..."
exit 1
