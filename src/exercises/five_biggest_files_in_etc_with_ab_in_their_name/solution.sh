#!/bin/bash -eu
set -o pipefail
{ find /etc -type f -name "*ab*" -exec stat --format "%s %n" {} \; 2> /dev/null || true; } | sort -nr | awk 'NR<=5' | cut -f 2 -d " "
