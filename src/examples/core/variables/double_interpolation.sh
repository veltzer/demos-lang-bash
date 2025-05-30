\#\!/bin/bash -eu

# this example shows how to interpolate variables in bash
#
# References:
# - https://www.linuxshelltips.com/difference-between-and-in-bash/

x=7
echo "x is $x"
echo "x is ${x}"

y=x
echo "y is $y"
# this double interpolation does not work
echo "$y is $$y"
echo "double intepolation of y is ${!y}"
