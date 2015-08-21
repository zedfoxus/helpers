function cdt()
{

    case "$1" in
    "-h") showcdtusage;;

    "") cdtbranches unstable;;
    "unstable") cdtbranches $1;;
    "10.3") cdtbranches $1;;
    "10.2") cdtbranches $1;;
    "10.1") cdtbranches $1;;

    "conv") cd /c/src/conversion;;
    "home") cd /c/users/chirag.shukla;;
    "d") cd /d;;
    "safe") cd /d/safe_exes;;
    "tempsrc") cd /d/tempsrc;;
    "stash") cd /d/stashedsrc;;
    "review") cd /d/code-review;;
    esac
}

function cdtbranches()
{
    cd /c/src/leds/branches/$1
}

function showcdtusage()
{
    echo 'Usage: . cdt 10.2        cd into 10.2 branch'
    echo '       . cdt 10.1        cd into 10.1 branch'
    echo '       . cdt unstable    cd into unstable branch'
    echo '       . cdt             cd into unstable branch'
    echo '       . cdt conv        cd into conversion'
    echo '       . cdt home        cd into c:\users\zf'
    echo '       . cdt d           cd into d: drive'
    echo '       . cdt safe        cd into d:\safe_exes'
    echo '       . cdt tempsrc     cd into d:\tempsrc'
    echo '       . cdt stash       cd into d:\stashedsrc'
    echo '       . cdt review      cd into d:\code-review'
}
