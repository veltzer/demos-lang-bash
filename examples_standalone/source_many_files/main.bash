#!/bin/bash

<<'COMMENT'

This example shows that you cannot source more than one file in bash.

The loop which follows is the right way to do it.

Another thing that works is the cat example.

References:
http://stackoverflow.com/questions/1423352/source-all-files-in-a-directory-from-bash-profile

COMMENT

source one.bash two.bash

for x in ???.bash; do
	source $x
done

source <(cat ???.bash)
