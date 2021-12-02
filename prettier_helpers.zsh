#!/bin/zsh
# shellcheck shell=bash

# use prettier to format all Js, jsx and json files from the root of a repo
function _pretty_all_helper() {
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

    # todo: add ts support, probably with a flag... maybe it can be automated by the prettierrc?

    # check for prettier
    if ! npm list | grep prettier && read -qr "prettier is not installed in this project. would you like to fix that? (Y/y) "
        then
            npm install prettier
            echo ""
        else
            return
    fi

    # run script
    npx prettier --write "./**/*.{js,jsx,json}"

    echo ""
    echo "very pretty now ^o^"
}

alias prettyAll=_pretty_all_helper