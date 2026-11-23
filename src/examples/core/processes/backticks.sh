#!/bin/bash -eu

# This example tries to show how backticks work in the shell.
# Note that this also deals with nested backticks

set -o pipefail

# very simple: execute a command and replace `[cmd]` with its output
# shellcheck disable=SC2006  # teaching: this example is about the backtick form of command substitution
now=`date`
echo "${now}"
# the command can be a shell command with redirection, variables, pipe and all
# shellcheck disable=SC2006  # teaching: this example is about the backtick form of command substitution
clock=`date | cut -f 2 -d " "`
echo "${clock}"
# another example with dirname(1)
# shellcheck disable=SC2006,SC2005  # teaching: backticks are the subject; the echo wrapper just shows the substituted output
echo "`dirname a/b/c`"
# what about nesting things? this does not work because the shell doesnt understand which
# back ticks go with which...
# shellcheck disable=SC2006,SC2005  # teaching: nested backticks without escaping is the broken case being shown
echo "`dirname `dirname a/b/c``"
# this works
# shellcheck disable=SC2006,SC2005  # teaching: escaped nested backticks is the working (and ugly) case being shown
echo "`dirname \"\`dirname a/b/c\`\"`"
