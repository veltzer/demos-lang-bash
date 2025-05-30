\#\!/bin/bash -eu

# This script shows how to create a temporary file in bash.
# References:
# - http://stackoverflow.com/questions/10982911/creating-temporary-files-in-bash

# create a temporary file which is only writable and readable by me in /tmp
# and give me it's name
# the problem with this approach is that the name of the file will be garbled.
filename=$(mktemp)
echo "filename is $filename"
echo hi >> $filename
cat $filename
rm $filename

# another more sophisticated option is to create a temporary folder which is readable/writable
# only by me and in it I can place files with easy names
dirname=$(mktemp -d "${TMPDIR:-/tmp/}$(basename 0).XXXXXXXXXXXX")
echo "dirname is $dirname"
filename=$dirname/foo.txt
echo "hi" > $filename
cat $filename
rm $filename
rmdir $dirname
