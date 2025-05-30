\#\!/bin/bash -eu

find /etc -type f -and -name "*.conf" -exec ls -l {} \; 2> /dev/null | tr -s " " |
	cut -f 5 -d " " | awk '{ sum += $1 } END { print sum }'
