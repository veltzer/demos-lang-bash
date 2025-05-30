\#\!/bin/bash -eu

# This example shows that kill 0 in bash causes a segfault, see the other
# example of how to avoid this segfault.
#
# Note that it doesn't always causes a segfault:
# I found that it happens in a signal type function when it is registered
# on the TERM signal.
#
# References:
# - https://bugs.launchpad.net/ubuntu/+source/bash/+bug/1337827

function signal() {
	kill 0
}

trap signal TERM
kill -s SIGTERM $$
