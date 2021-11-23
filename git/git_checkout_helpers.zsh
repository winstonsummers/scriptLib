#!/bin/zsh
# shellcheck shell=bash

# checkout to "main" branch
alias gcm="(git checkout develop || git checkout main || git checkout master) && git pull"
