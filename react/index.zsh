#!/bin/zsh
# shellcheck shell=bash

function() {
    here="$(dirname $0)"

    source "$here/create_container.zsh"
    source "$here/create_component.zsh"
}