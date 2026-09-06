#!/bin/bash -eu
# this example is about sourcing itself: the paths are dynamic or relative
# by design, so shellcheck cannot follow them
# shellcheck disable=SC1090,SC1091

# This is an example of sourcing files relative to the script
# executing the 'source' command.
# You can check that this method works by running "main.bash"
# from a different folder than the current one.
# Please note that this method is bash specific and is not
# bullet proof but will work in most cases.
#
# References:
# - https://stackoverflow.com/questions/6659689/referring-to-a-file-relative-to-executing-script
# - http://mywiki.wooledge.org/BashFAQ/028

source "${BASH_SOURCE%/*}/sourced.bashinc"
