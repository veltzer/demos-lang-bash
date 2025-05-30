\#\!/bin/bash -eu

if [[ "$#" -ne 2 ]]
then
	echo "you must pass [from_suffix] [to_suffix] to this script"
	exit 1
fi

from_suffix=$1 # .JPG
to_suffix=$2 # .jpg

if compgen -G *${from_suffix} > /dev/null
then
	for file in *${from_suffix}
	do
		new_name=`basename "${file}" ${from_suffix}`${to_suffix}
		mv "${file}" "${new_name}"
	done
else
	echo "You do not have any ${from_suffix} files in the current directory"
fi
