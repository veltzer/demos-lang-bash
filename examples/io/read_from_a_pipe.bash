#!/bin/bash -u

<<'COMMENT'

This example shows how to read from a pipe

COMMENT

dpkg --list | while IFS= read -r line
do
	printf '%s\n' "$line"
done
