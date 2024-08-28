#!/bin/bash -eu

for dir in $(find /etc -maxdepth 1 -mindepth 1 -type d)
do
    if [ "$dir" != "." ]
    then
        basename=$(basename "$dir")
        echo "${basename}"
    fi
done
