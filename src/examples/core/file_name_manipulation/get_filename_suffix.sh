#!/bin/bash -u

# This is an example of how to get the filename suffix in bash
#
# References:
# - https://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash

filename="/etc.tar/file.tar.gz"
# anything after the last dot
result="${filename##*.}"
if [ "$result" != "gz" ]
then
	echo "ERROR"
fi
# anything after the first dot (could be dangerous if the path has dots)
result="${filename#*.}"
if [ "$result" != "tar/file.tar.gz" ]
then
	echo "ERROR"
fi
# first get the basename and only then use #*.
result="${filename##*/}"
if [ "$result" != "file.tar.gz" ]
then
	echo "ERROR"
fi
