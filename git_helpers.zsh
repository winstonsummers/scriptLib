# checkout to "main" branch
alias gcm="(git checkout develop || git checkout main || git checkout master) && git pull"

# add and commit changes quickly
function _gac_helper() {
    p_flag=""
    while getopts "p" flag; do
        case "${flag}" in
            p) p_flag="true" 
                shift ;;
            *) echo "Invalid flag:"
                echo " -p is the only valid option."
                exit 1 ;;
        esac
    done

    git add -A

    commitMessage="$*"
    if [[ "${commitMessage}" == "" ]]
        then
            vared -p "Commit Message: " commitMessage
    fi

    git commit -m "${commitMessage}"

    if [[ "${p_flag}" == "true" ]]
        then
            git push
    fi
}

alias gac=_gac_helper
alias gacp=_gac_helper -p "$*"
