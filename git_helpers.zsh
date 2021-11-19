# checkout to "main" branch
alias gcm="(git checkout develop || git checkout main || git checkout master) && git pull"

# add and commit changes quickly
function _gac_helper() {
    git add -A

    p_flag=""
    while getopts "p" flag; do
        case "${flag}" in
            p) p_flag="true" ;;
            *) exit 1 ;;
        esac
    done

    git commit -m "$*"

    if [[ "${p_flag}" == "true" ]]
        then
            git push
    fi
}
alias gac=_gac_helper
alias gacp="gac -p $*"
