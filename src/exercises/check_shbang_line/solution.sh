#!/bin/bash -u

folder="$1"

for filename in $folder/*
do
	if test -x $filename
	then
		read -r line < $filename
		if test "$line" != "#!/bin/bash"
		then
			new_filename="${filename}.new"
			echo "#!/bin/bash" > $new_filename
			cat $filename >> $new_filename
			chmod +x $new_filename
		fi
	fi
done
