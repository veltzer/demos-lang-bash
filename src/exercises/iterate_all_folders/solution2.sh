#!/bin/bash -eu

set -o pipefail

find /etc -maxdepth 1 -mindepth 1 -type d -print0 |
while IFS= read -r -d "" dir
do
    if [[ "${dir}" != "." ]]
    then
        basename=$(basename "${dir}")
        echo "${basename}"
    fi
done
