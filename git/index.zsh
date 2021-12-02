#!/bin/zsh
# shellcheck shell=bash

function() {
    here="$(dirname $0)"
    
    source "$here/git_add_commit.zsh"
    source "$here/git_checkout_helpers.zsh"
}