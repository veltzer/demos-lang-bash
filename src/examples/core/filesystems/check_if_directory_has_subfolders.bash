#!/bin/bash -u

# This example shows how to check if a directory has subfolders.

FOLDER="/etc"
if [ "$(stat --format="%h" "${FOLDER}")" -gt 2 ]
then
	echo "yes"
else
	echo "no"
fi
