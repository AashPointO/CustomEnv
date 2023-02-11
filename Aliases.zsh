#!/bin/zsh

# Path Management
export ITERM_ENABLE_SHELL_INTEGRATION_WITH_TMUX=YES

alias gdh="git diff HEAD"
function gdm() {
 git diff $1 $(git merge-base main HEAD) HEAD
}

# Vim aliases
function va() { vim -p $(find . -type f -d 1 -not -path '*/.*') }
function vm() { vim -p $M/$(gdm --name-only) }

# Shell Vim mode
bindkey -v
bindkey "^R" history-incremental-search-backward
VI_MODE_SET_CURSOR=true
bindkey -s jj '\e'

# Misc
export FZF_DEFAULT_OPTS='--bind ctrl-d:page-down,ctrl-u:page-up'
#source $(brew --cellar)/fzf/0.30.0/shell/key-bindings.zsh
#source $(brew --cellar)/fzf/0.30.0/shell/completion.zsh
