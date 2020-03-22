#!/bin/bash -u

# the ":1" means that the column width will be 1
# the "=" means that a header will not be printed

ps -q $1 -o ppid:1=
