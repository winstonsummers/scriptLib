#!/bin/zsh
# shellcheck shell=bash

function _create_component_helper() {
    here="$(dirname $0)"
    
    # validate name
    name="$1"
    if [[ "${name}" == "" ]]
        then
            vared -p "Component Name: " name
    fi

    # validate output location
    out="$2"
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
    
    echo "creating output"

    out="${out}${name}"
    mkdir -p "$out"

    out="${out}/${name}.component.jsx"
    
    # create file from template
    template_file="$here/template/component.jsx"
    eval "echo \"$(cat "${template_file}")\" " > "${out}"

    echo "le fine"
}

alias createComponent=_create_component_helper
