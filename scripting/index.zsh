#!/bin/zsh
# shellcheck shell=bash

function() {
    here="$(dirname $0)"

    source "$here/create_script.zsh"
    source "$here/create_source.zsh"
}