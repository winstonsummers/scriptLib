# checkout to "main" branch
alias gcm="(git checkout develop || git checkout main || git checkout master) && git pull"

# add and commit changes quickly
function _gac_helper() {
    # validate flags
    p_flag=""
    while getopts "p" flag; do
        case "${flag}" in
            p) p_flag="true" 
                shift ;;
            *) echo "Invalid flag:"
                echo " -p is the only valid option."
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

    echo $p_flag
    if [[ "${p_flag}" == "true" ]]
        then
            echo "checking for remote"
            if [[ $(git config --get remote.origin.url) ]]
                then
                    echo "pushing all the commits"
                    git push
                else
                    echo "no remote found..."
                    echo "skipping push"
            fi
    fi

    echo "le fine"
}


alias gac=_gac_helper
alias gacp=_gac_helper -p
