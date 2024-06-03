#!/bin/bash -eu

if test $# -ne 1
then
	echo "you must pass exactly one argument (folder) to this script..."
	exit 1
fi

folder=$1

if test ! -d $folder
then
	echo "folder [${folder}] does not exist"
	exit 1
fi
for filename in ${folder}/*
do
	good_filename=${filename/ /_}
	if test "${good_filename}" != "${filename}"
	then
		mv "${filename}" "${good_filename}"
	fi
done
