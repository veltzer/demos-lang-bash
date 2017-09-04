#!/bin/bash -ue

# This is an example of how to get the filename suffix in bash
# References:
# - https://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash

filename="/etc.tar/file.tar.gz"
# anything after the last dot
echo ${filename##*.}
# anything after the first dot (could be dangerous if the path has dots)
echo ${filename#*.}
# first get the basename and only then use #*.
echo ${filename##*/}
