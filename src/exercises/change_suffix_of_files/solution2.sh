#!/bin/bash -eu

find . -name "*.JPG" -exec bash -c 'x="$1"; mv "${x}" "${x::-4}.jpg"' _ {} \;
