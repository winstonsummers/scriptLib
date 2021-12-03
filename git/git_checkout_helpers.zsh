#!/bin/zsh
# shellcheck shell=bash

# checkout to "main" branch
alias gcm="(
        git checkout develop
        || git checkout dev
        || git checkout main 
        || git checkout trunk
        || git checkout master
        ) && git pull"

# checkout to the branch you were last on
alias gitBack="git checkout -"

# Updates the main branch and returns to starting branch
alias pullMain="gcm && gitBack"
