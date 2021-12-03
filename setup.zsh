#!/bin/zsh
# shellcheck shell=bash

# init the repo
function _init_helper() {
    # need some chmod +x up in here
    echo "all set"
}

# clean up
function _teardown_helper() {
    echo "teardown"
}

alias initScriptLib=_init_helper
alias teardownScriptLib=_teardown_helper