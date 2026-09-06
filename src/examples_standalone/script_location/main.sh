#!/bin/bash -eu
# this example is about sourcing itself: the paths are dynamic or relative
# by design, so shellcheck cannot follow them
# shellcheck disable=SC1090,SC1091

source subfolder/foo.bashinc
