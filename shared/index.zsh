#!/bin/zsh
# shellcheck shell=bash

# helper functions and such that many of these modules may use
function() {
    here="$(dirname $0)"

    source "$here/create_helpers.zsh"
}
