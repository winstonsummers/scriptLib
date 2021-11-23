#!/bin/zsh
# shellcheck shell=bash

here="$(dirname $0)"

function _create_container_helper() {
    # validate name
    name="$1"
    if [[ "${name}" == "" ]]
        then
            vared -p "Contaniner Name: " name
    fi

    template_file="$here/js/container.jsx"

    # validate output location
    out="$2"
    if [[ "${out}" == "" ]]
        then
            ls_list=$(ls)
            echo "$ls_list"
            echo "looking for code dir..."
            for thing in $ls_list; do
                echo "${thing}"
                case "$thing" in
                    src) 
                        out="src/" ;;
                    *) 
                        out="" ;;
                esac
            done;
    fi
    

    out="${out}${name}"
    echo "$out"
    mkdir -p "$out"

    out="${out}/${name}.container.jsx"
    

    # create file from template
    . "${name}"
    cat "${template_file}" > "${out}"
}

alias create_container=_create_container_helper
