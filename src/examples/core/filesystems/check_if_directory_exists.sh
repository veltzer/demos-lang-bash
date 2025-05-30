#!/bin/bash -u

# This example shows how to check if a directory exists or doesnt exist.

if [ -d "/etc" ]
then
	echo "yes, /etc exists"
fi
if ! [ -d "/etcd" ]
then
	echo "no, /etcd doesn't exist"
fi
