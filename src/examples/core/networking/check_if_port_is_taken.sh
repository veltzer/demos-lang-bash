\#\!/bin/bash -eu

# This example shows you how to check if a port is busy in bash
# using the ss(1) command
# It's better than the referenced link.
#
# References:
# - https://www.cyberciti.biz/faq/how-do-i-check-if-a-port-is-in-use-on-linux/

port_name=$1
if [[ $(ss --no-header --tcp --listening "sport = :$1") ]]
then
	echo "port [$1] is busy"
else
	echo "port [$1] is not busy"
fi
