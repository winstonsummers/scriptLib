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
    out=_validate_output_location "$2"
    
    echo "creating output"

    out_dir=_validate_mkdir "$out$name"

    out_file="$out_dir/$name.container.jsx"
    
    # create file from template
    template_file="$here/template/container.jsx"
    eval "echo \"$(cat "${template_file}")\" " > "${out_file}"

    echo "le fine"
}

alias createContainer=_create_container_helper
