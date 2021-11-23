#!/bin/zsh
# shellcheck shell=bash

# add and commit changes quickly
function _gac_helper() {
    # validate flags
    p_flag=""
    while getopts "p" flag; do
        case "${flag}" in
            p ) p_flag="true"
                shift
                break ;;
            * ) echo "Invalid flag:"
                echo "  -p is the only valid option."
                echo ""
                return
        esac
    done

    # validate commit message
    commitMessage="$*"
    if [[ "${commitMessage}" == "" ]]
        then
            vared -p "Commit Message: " commitMessage
    fi

    # Do The Things!!!
    echo "adding all the things"
    git add -A

    echo "committing all the changes"
    git commit -m "${commitMessage}"

    echo ""

    if [[ "${p_flag}" == "true" ]]
        then
            echo "checking for remote..."
            if [[ $(git config --get remote.origin.url) ]]
                then
                    echo "pushing all the commits"
                    git push
                    echo ""
                else
                    echo "no remote found..."
                    echo "skipping push"
                    echo ""
            fi
    fi

    echo "le fine"
}


alias gac="_gac_helper $*"
alias gacp="_gac_helper -p \"$*\""
