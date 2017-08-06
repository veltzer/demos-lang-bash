#!/bin/bash -u

# This example shows how to iterate on a bunch of files.
# The easiest way is to use straight up bash but to use
# the 'shopt -s nullglob'.

source ../../includes/common.bash

shopt -s nullglob

echo -e "trying using expanding globs into arrays"
echo -e "\tthis list should be empty"
a=(*.notexists)
for x in "${a[@]}"
do
	echo -e "\t\t$x"
done
echo -e "\tthis list should be full"
a=(*.bash)
for x in "${a[@]}"
do
	echo -e "\t\t$x"
done
echo -e "trying using straight up bash"
echo -e "\tthis list should be empty"
for x in *.notexists
do
	echo -e "\t\t$x"
done
echo -e "\tthis list should be full"
for x in *.bash
do
	echo -e "\t\t$x"
done

echo -e "trying using compgen"
echo -e "\tthis list shold be empty"
for x in $(compgen -G "*.notexists")
do
	echo -e "\t\t$x"
done
echo -e "\tthis list should be full"
for x in $(compgen -G "*.bash")
do
	echo -e "\t\t$x"
done
