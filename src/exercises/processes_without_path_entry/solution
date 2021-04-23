#!/bin/bash -eu

# part="$1"

for filename in /proc/*
do
	filename=$(basename $filename)
	if [[ "${filename}" =~ ^[0-9]*$ ]]
	then
		echo ${filename}
	fi
done
