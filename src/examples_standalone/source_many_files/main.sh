\#\!/bin/bash -eu

# This example shows that you cannot source more than one file in single bash 'source' command.
# The loop which follows is the right way to do it.
# Another thing that does work is the cat example.
#
# Another issue is what happens if there are no files matching the pattern.
# In this case just doing the for loop is not enough so we have to do
# one of the following:
# - only apply the glob after we checked that there are files matching the glob
# as in the example of the 'compgen -G' below.
# - use the shell option 'shopt -s nullglob' and 'shopt -u nullglob'
#
# References:
# - http://stackoverflow.com/questions/1423352/source-all-files-in-a-directory-from-bash-profile

# this does not work:
# -will only source the first file
# -will fail if there is no file matching the pattern
source subfolder/*.bashinc

# this one checks if there are matches before doing
# regular shell globbing
# so this handles the case where there are no matches.
# it is long though
if compgen -G "subfolder/*.bashinc" > /dev/null
then
	for x in subfolder/*.bashinc
	do
		source $x
	done
fi

# the following example does handle the case where there are no matches
# the difficulty is that we need to return the status of the shell 'nullglob'
# setting to it's original state and we do not do that here.
shopt -s nullglob
for x in subfolder/*.bashinc
do
	source $x
done
shopt -u nullglob

# this handles no matches and is short
for x in $(compgen -G "subfolder/*.bashinc")
do
	source $x
done

# will fail if there is no file matching the pattern
source <(cat subfolder/*.bashinc)
