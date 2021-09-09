
ZSH_THEME="fishy"

function clearunstaged() {
    git reset --hard
    git clean -fd
}

function addtolastcommit() {
    git add .
    git commit --amend --no-edit
}

# Opening files with 'code' command
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
