#!/bin/bash -u

<<'COMMENT'

This is an example of how to substiture characters or parts
of strings in bash.

References:
http://stackoverflow.com/questions/2871181/bash-string-replacing-some-chars-with-another

COMMENT

orig="AxxBCyyyDEFzzLMN"
mod=${orig//[xyz]/_}

echo ${mod}
