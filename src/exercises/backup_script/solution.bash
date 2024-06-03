#!/bin/bash -eu

find /etc -type f -readable 2> /dev/null | tar --create --files-from=- --file=/tmp/backup.tar.gz --gzip --absolute-names
