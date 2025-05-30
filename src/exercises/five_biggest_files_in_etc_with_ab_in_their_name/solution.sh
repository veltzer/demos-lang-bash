#!/bin/bash -u
find /etc -type f -name "*ab*" -exec stat --format "%s %n" {} \; 2> /dev/null | sort -nr | head -5 | cut -f 2 -d " "
