#!/bin/bash -u

<<'COMMENT'

This example shows how to correctly add compoents to envrionment
or non environment variables like 'PATH'.

References:
- http://superuser.com/questions/39751/add-directory-to-path-if-its-not-already-there

COMMENT

pathadd() {
	if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
		PATH="${PATH:+"$PATH:"}$1"
	fi
}

pathadd /usr/bin
pathadd /usr/bin
pathadd /usr/bin
pathadd /usr/bin

echo $PATH
