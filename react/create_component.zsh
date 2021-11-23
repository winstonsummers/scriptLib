#!/bin/zsh
# shellcheck shell=bash

here="$(dirname $0)"

function _create_component_helper() {
    # validate name
    name="$1"
    if [[ "${name}" == "" ]]
        then
            vared -p "Component Name: " name
    fi

    template_file="$here/js/component.jsx"

    # validate output location
    out="$2"
    if [[ "${out}" == "" ]] && [[ -d "src/" ]]
        then
            out="src/"
    elif [[ -d "app/" ]]
        then
            out="app/"
    fi
    

    echo "creating output"

    out="${out}${name}"
    mkdir -p "$out"

    out="${out}/${name}.component.jsx"
    
    # create file from template
    eval "echo \"$(cat "${template_file}")\" " > "${out}"

    echo "le fine"
}

alias createComponent=_create_component_helper
