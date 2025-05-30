\#\!/bin/bash -eu

# This example shows how to do conditional logging in bash
# References:
# - https://stackoverflow.com/questions/8455991/elegant-way-for-verbose-mode-in-scripts

function log () {
    if [[ "${V}" -eq 1 ]]; then
        echo "$@"
    fi
}

V=1


log "log message..."
