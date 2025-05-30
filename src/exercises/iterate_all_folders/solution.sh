#!/bin/bash -eu

for dir in /etc/*/
do
    dir=${dir%*/}  # Remove trailing slash
    basename=${dir##*/}  # Remove everything before the last /
    echo "${basename}"
done
