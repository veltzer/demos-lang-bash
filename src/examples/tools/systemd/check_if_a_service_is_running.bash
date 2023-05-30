#!/bin/bash -u

# This is an example of how to check if a service is running in bash
#
# References:
# - https://unix.stackexchange.com/questions/396630/the-proper-way-to-test-if-a-service-is-running-in-a-script/396638

SERVICE_NAME=docker.service
if systemctl is-active --quiet "${SERVICE_NAME}"
then
	echo "service is active"
else
	echo "service is inactive"
fi
