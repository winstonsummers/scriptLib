#!/bin/zsh
# shellcheck shell=bash

here="$(dirname $0)"

# root level
source "$here/setup.zsh"
source "$here/prettier_helpers.zsh"
source "$here/general_helpers.zsh"

# sub dirs
source "$here/shared/index.zsh"
source "$here/git/index.zsh"
source "$here/react/index.zsh"
