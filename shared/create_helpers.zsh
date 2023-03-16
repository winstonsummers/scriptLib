#!/bin/zsh
# shellcheck shell=bash

# validate output location
function _validate_output_location() {
    out="$1"
    if [[ "${out}" == "" ]] 
        then
            if [[ -d "src/" ]]
                then
                    out="src/"
            elif [[ -d "app/" ]]
                then
                    out="app/"
            fi
    fi

    return "${out}"
}

# validate/mkdir
function _validate_mkdir() {
    if [[ ! -d "$1" ]]
        then
            mkdir -p "$1"
    fi

    return "$1"
}
