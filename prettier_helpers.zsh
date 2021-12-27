#!/bin/zsh
# shellcheck shell=bash

# use prettier to format all Js, jsx and json files from the root of a repo
function _pretty_all_helper() {
    # todo: add ts support, probably with a flag... maybe it can be automated by the prettierrc?

    # check for prettier
    validate_node_and_module prettier

    # run script
    npx prettier --write "./**/*.{js,jsx,json}"

    echo ""
    echo "very pretty now ^o^"
}

alias prettyAll=_pretty_all_helper