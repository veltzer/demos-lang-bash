#!/bin/bash -u

<<'COMMENT'

This example shows how to check if a directory exists or doesnt exist.

COMMENT

if [ -d "/etc" ]; then
	echo "yes, /etc exists"
fi
if ! [ -d "/etcd" ]; then
	echo "no, /etcd doesn't exist"
fi
