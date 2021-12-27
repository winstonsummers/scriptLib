#!/bin/zsh
# shellcheck shell=bash

function validate_node_and_module() {
    # check for npm first
    echo "checking for package.json..."
    if grep version package.json
        then
            echo ""
            echo "this doesn't seem to be a node project..."
            echo "try using this in the root of a node project"
            echo ""
            return
    fi

    echo ""

    if ! npm list | grep "$1" && read -qr "$1 is not installed in this project. would you like to fix that? (Y/y) "
        then
            npm install "$1"
            echo ""
        else
            return
    fi
}