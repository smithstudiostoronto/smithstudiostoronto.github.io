#!/usr/bin/env bash



#### PROD DEPLOY FUNCTIONS ####
function validate_css_js_html {
    echo fart
}
function remove_whitespace_css_js {
    echo fart
}
function validate_css_js_html {
    echo fart
}
function validate_css_js_html {
    echo fart
}






#0
function determine_prod_or_dev {
    #fetch branch name
    current_branch_raw="($(git branch | grep '*'))"
    branch_string_length=${#current_branch_raw}
    branch_string_length=$((branch_string_length-4))
    current_branch=${current_branch_raw:3:branch_string_length}

    #initiating publish
    case "$current_branch" in
        "dev")
        echo "Initiating Dev Deploy..."
        ;;
        "prod")
        echo "Initiating Prod Deploy..."
        ;;
        *)
        echo Error: Check Current Branch or Directory
        echo Note: Branch must be \"dev\" or \"prod\"
    esac
   # echo $branches
    #case
    #-Not under git -not in prod or dev -dev -prod
    # git branch | grep '*' > resources/current_branch.txt
    # IFS=' ' read -ar split_branch <<< head -n 1 resources/current_branch.txt
    # echo "${split_branch[1]}"
    #echo $splitfirstline
}

determine_prod_or_dev
