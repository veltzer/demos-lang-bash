#!/bin/bash -eu

set -o pipefail

{ find /etc -type f -and -name "*.conf" -exec ls -l {} \; 2> /dev/null || true; } | tr -s " " |
	cut -f 5 -d " " | awk '{ sum += $1 } END { print sum }'
