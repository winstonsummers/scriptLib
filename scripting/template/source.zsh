#!/bin/zsh
# shellcheck shell=bash

# ${name}
function() {
    here="$(dirname \$0)"

    source "\$here/${name}"
}