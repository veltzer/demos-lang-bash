#!/bin/bash -u

# This example shows how to do conditional logging in bash

function log () {
    if [[ "${V}" -eq 1 ]]; then
        echo "$@"
    fi
}

V=1


log "log message..."
