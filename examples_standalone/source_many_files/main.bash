#!/bin/bash

<<'COMMENT'

This example shows that you cannot source more than one file in single bash 'source' command.
The loop which follows is the right way to do it.
Another thing that does work is the cat example.

Another issue is what happens if there are no files matching the pattern.
In this case just doing the for loop is not enough.

References:
http://stackoverflow.com/questions/1423352/source-all-files-in-a-directory-from-bash-profile

COMMENT

# this does not work:
# -will only source the first file
# -will fail if there is no file matching the pattern
source subfolder/*.bash

if compgen -G "subfolder/*.bash" > /dev/null; then
	for x in subfolder/*.bash; do
		source $x
	done
fi
	
for x in $(compgen -G "subfolder/*.bash"); do
	source $x
done

# will fail if there is no file matching the pattern
source <(cat subfolder/*.bash)
