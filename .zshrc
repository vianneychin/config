
ZSH_THEME="fishy"

function clearunstaged() {
    git reset --hard
    git clean -fd
}

function addtolastcommit() {
    git add .
    git commit --amend --no-edit
}


# Holds 10,000 lines of history even after terminal exit
export HISTFILESIZE=20000
export HISTSIZE=10000
shopt -s histappend
# Combine multiline commands into one in history
shopt -s cmdhist
# Ignore duplicates, ls without options and builtin commands
HISTCONTROL=ignoredups
export HISTIGNORE="&:ls:[bf]g:exit"

# Opening files with 'code' command
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
