\#\!/bin/bash -eu
folder="$1"
for filename in $folder/*
do
	echo $filename
done
