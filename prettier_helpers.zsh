#!/bin/zsh
# shellcheck shell=bash

# use prettier to format all Js, jsx and json files from the root of a repo
function _prettyAll_helper() {
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

    # check for prettier
    packageName="prettier"
    if ! npm list | grep "$packageName" && read -qr "prettier is not installed in this project. would you like to fix that? (Y/y) "
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

alias prettyAll=_prettyAll_helper