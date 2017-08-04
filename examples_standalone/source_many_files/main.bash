#!/bin/bash

<<'COMMENT'

This example shows that you cannot source more than one file in single bash 'source' command.
The loop which follows is the right way to do it.
Another thing that does work is the cat example.

References:
http://stackoverflow.com/questions/1423352/source-all-files-in-a-directory-from-bash-profile

COMMENT

# this does not work (will only source the first file)
source subfolder/*.bash

for x in subfolder/*.bash; do
	source $x
done

source <(cat subfolder/*.bash)
