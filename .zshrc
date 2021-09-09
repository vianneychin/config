
ZSH_THEME="fishy"

function clearunstaged() {
    git reset --hard
    git clean -fd
}

function addtolastcommit() {
    git add .
    git commit --amend --no-edit
}
