#!/bin/bash -u

# This is an example of how to compare strings
#
# The best way to compare strings in Bash is to use the [[... ]] (double square brackets) construct.
# It's more robust and feature-rich than the older [... ] (single square brackets) or the test command.
# Here's a breakdown of why [[... ]] is preferred and how to use it effectively:
# Why [[... ]] is better:
# * Word Splitting and Globbing: Within [[... ]], word splitting and pathname expansion (globbing) are not performed. This is crucial for handling strings that contain spaces or special characters. With [... ], you have to be very careful with quoting to avoid these issues.
# * String Comparison: [[... ]] performs string comparison by default.
# * Regular Expression Matching: [[... ]] supports regular expression matching using the =~ operator. This is a powerful feature not available with [... ].
# * No Null Bytes: Handles strings with null bytes safely.
# * More Readable: The syntax is generally considered more readable and intuitive.

a="foo"
b="bar"
[ "$a" = "$b" ]
echo $?
[ "$a" != "$b" ]
echo $?
[[ "$a" == "$b" ]]
echo $?
[[ "$a" != "$b" ]]
echo $?
