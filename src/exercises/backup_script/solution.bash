#!/bin/bash -eu

# the next line is a poor excuse for the second line...
# tar cvfz /tmp/backup.tar.gz /etc 
find /etc -type f -readable 2> /dev/null | tar --create --files-from=- --file=/tmp/backup.tar.gz --gzip --absolute-names
