#!/bin/zsh
# shellcheck shell=bash

function _create_container_helper() {
    here="$(dirname $0)"
    
    # validate name
    name="$1"
    if [[ "${name}" == "" ]]
        then
            vared -p "Contaniner Name: " name
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

    out="${out}/${name}.container.jsx"
    
    # create file from template
    template_file="$here/template/container.jsx"
    eval "echo \"$(cat "${template_file}")\" " > "${out}"

    echo "le fine"
}

alias createContainer=_create_container_helper
