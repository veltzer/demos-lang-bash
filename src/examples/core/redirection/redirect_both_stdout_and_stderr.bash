#!/bin/bash -u

# This example shows how to redirect both stdout and stderr
# to a single file.
# we show that this works by running ls twice:
# once where we are sure that all is ok - this should produce both to stdout
# once where we are sure that all is not good - this should produce both to stderr
# note that order is important. if you do [command] 2>&1 > [output_file]
# then stderr will be redirected to where stdout is now, the screen and only
# then stdout will be redirected to the file. This is not what you want.
#
# References:
# https://askubuntu.com/questions/625224/how-to-redirect-stderr-to-a-file

rm -f /tmp/both
# print to stdout
ls &> /tmp/both
# print to stderr
ls nonexist &>> /tmp/both
# show output
echo "output is"
cat /tmp/both
# cleanup
rm -f /tmp/both
echo "finished"

rm -f /tmp/both
# print to stdout
ls > /tmp/both 2>&1
# print to stderr
ls nonexist >> /tmp/both 2>&1
# show output
echo "output is"
cat /tmp/both
# cleanup
rm -f /tmp/both
echo "finished"
