#!/bin/bash -eu

# This example shows how to check if a directory has subfolders.

FOLDER="/etc"
links=$(stat --format="%h" "${FOLDER}")
if [[ "${links}" -gt 2 ]]
then
	echo "yes"
else
	echo "no"
fi
