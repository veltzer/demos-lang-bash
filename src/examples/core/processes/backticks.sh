\#\!/bin/bash -eu

# This example tries to show how backticks work in the shell.
# Note that this also deals with nested backticks

# very simple: execute a command and replace `[cmd]` with its output
# shellcheck disable=SC2006,SC2005
echo "`date`"
# the command can be a shell command with redirection, variables, pipe and all
# shellcheck disable=SC2006,SC2005
echo "`date | cut -f 2 -d " "`"
# another example with dirname(1)
# shellcheck disable=SC2006,SC2005
echo "`dirname a/b/c`"
# what about nesting things? this does not work because the shell doesnt understand which
# back ticks go with which...
# shellcheck disable=SC2006,SC2005
echo "`dirname `dirname a/b/c``"
# this works
# shellcheck disable=SC2006,SC2005
echo "`dirname \"\`dirname a/b/c\`\"`"
