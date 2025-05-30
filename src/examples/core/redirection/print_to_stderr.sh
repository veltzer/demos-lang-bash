\#\!/bin/bash -eu

# This example shows how to print to stderr in bash.
#
# References:
# - https://stackoverflow.com/questions/2990414/echo-that-outputs-to-stderr

>&2 echo "this goes to stderr"
echo "this goes to stdout"
1>&2 echo "this goes to stderr"
echo "this goes to stdout"
echo "this goes to stderr" >&2
echo "this goes to stdout"
echo "this goes to stderr" 1>&2
echo "this goes to stdout"
echo "this goes to stderr" > /dev/stderr
echo "this goes to stdout" > /dev/stdout
