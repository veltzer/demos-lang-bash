#!/bin/bash -eu

find /etc \( -type f -o -type d \) -exec ls -ld {} \; 2> /dev/null | tr -s " " | sort -n -k 2 | tail -1 | cut -f 9 -d " "
