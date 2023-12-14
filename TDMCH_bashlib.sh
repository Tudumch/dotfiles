#!/bin/bash  

function printColorText 
{
# Prints colorful string
# $1 - color: red, green, orange, blue, white
# $2 - any text

    if [[ $# -ne 2 ]]
    then
        echo "Wrong number of arguments! "
        return -1
    fi

    case "$1" in
        red) local COLORSTART="\033[91m" ;;
        green) local COLORSTART="\033[92m" ;;
        orange) local COLORSTART="\033[33m" ;;
        blue) local COLORSTART="\033[96m" ;;
        white) local COLORSTART="\033[0m" ;;
        *) echo "$1 is not an option"; return -1 ;;
    esac

    local COLOREND="\033[0m"

    echo -e "$COLORSTART""$2""$COLOREND"

    return 0
}

function checkOnline
{
# Checks has device access to internet or not
    ping -q -c1 google.com &>/dev/null && echo Online || echo Offline}
}
