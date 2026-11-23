#!/bin/bash -eu

set -o pipefail

{ find /etc \( -type f -o -type d \) -exec ls -ld {} \; 2> /dev/null || true; } | tr -s " " | sort -n -k 2 | tail -1 | cut -f 9 -d " "
