#!/bin/zsh
# shellcheck shell=bash

function _create_source_helper() {
    here="$(dirname $0)"
    
    # validate name
    name="$1"
    if [[ "${name}" == "" ]]
        then
            vared -p "Source Name: " name
    fi

    echo "creating output"

    out_dir=_validate_mkdir "$2$name"

    out_file="$out_dir/index.zsh"
    
    # create file from template
    template_file="$here/template/source.zsh"
    eval "echo \"$(cat "${template_file}")\" " > "${out_file}"

    echo "le fine"
}

alias createSource=_create_source_helper