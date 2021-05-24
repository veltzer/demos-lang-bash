#!/bin/bash -eu

if compgen -G *.JPG > /dev/null
then
	for file in *.JPG
	do
		# echo mv "${file}" "${file::3}.jpg"
		new_name=`basename "${file}" .JPG`.jpg
		# new_name=$(basename "${file}" .JPG).jpg
		mv "${file}" "${new_name}"
	done
else
	echo "You do not have any .JPG files in the current directory"
fi
