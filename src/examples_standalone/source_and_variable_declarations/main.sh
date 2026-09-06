#!/bin/bash -eu
# the variables here are set indirectly, by name (eval or local -n),
# which shellcheck cannot follow
# shellcheck disable=SC2154
# this example is about sourcing itself: the paths are dynamic or relative
# by design, so shellcheck cannot follow them
# shellcheck disable=SC1090,SC1091

# This example explores what is the relation between the 'source'
# bash builtin command and variables defined in the sourced files.
#
# NOTES:
# - you can not use the local keyword to have a local variables
# in a sourced file.
# - a sourced file can write to the variables defined by the sourcing
# file.
# - the sourcing file can see all the variables defined by the sourced
# file.
# - unless unset of course.

var="main_value"
source "${BASH_SOURCE%/*}/sourced.bashinc"
if [ "${var}" != "sourced_value" ]
then
	echo "ERROR"
fi
if [ "${my_var}" != "sourced_value" ]
then
	echo "ERROR"
fi
if [ "${my_unset_var-}" ]
then
	echo "ERROR"
fi
if [ "${my_unseen_var-}" ]
then
	echo "ERROR"
fi
