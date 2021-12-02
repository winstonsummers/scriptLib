#!/bin/zsh
# shellcheck shell=bash

function _create_script_helper() {
    here="$(dirname $0)"
    
    # validate name
    name="$1"
    if [[ "${name}" == "" ]]
        then
            vared -p "Script Name: " name
    fi

    echo "creating output"

    out_dir=_validate_mkdir "$2$name"

    out_file="$out_dir/$name.zsh"
    
    # create file from template
    template_file="$here/template/script.zsh"
    eval "echo \"$(cat "${template_file}")\" " > "${out_file}"

    echo "le fine"
}

alias createScript=_create_script_helper