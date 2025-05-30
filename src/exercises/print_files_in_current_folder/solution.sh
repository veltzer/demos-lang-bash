#!/bin/bash -u
folder="$1"
for filename in $folder/*
do
	echo $filename
done
