#!/bin/bash -eu
# this example is about sourcing itself: the paths are dynamic or relative
# by design, so shellcheck cannot follow them
# shellcheck disable=SC1090,SC1091

set +e

echo "in main"
source sourced_file.bashinc
ret=$?
echo "back in main return value is [${ret}]"
