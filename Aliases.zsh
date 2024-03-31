#!/bin/zsh

# Path Management
export ITERM_ENABLE_SHELL_INTEGRATION_WITH_TMUX=YES
export D=$HOME/Nerd
alias get_idf='. $HOME/esp/esp-idf/export.sh'
# Git tools
alias gsu="git submodule update"

function gdh() { git diff $@ HEAD }
function gdm() { git diff $@ $(git merge-base origin/main $(current_branch)) }


# Vim aliases
function va() { vim -p $(find . -type f -d 1 -not -path '*/.*') }
# $1 is for specific commits to diff against
function vm() { vim -p $(gdm    --name-only | sed -E "s;^| ; $M/;g") }
function vh() { vim -p $(gdh $1 --name-only | sed -E "s;^| ; $M/;g") }

# Shell Vim mode
bindkey -v
bindkey "^R" history-incremental-search-backward
VI_MODE_SET_CURSOR=true
bindkey -s jj '\e'

# Fzf configs
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --exclude .git'
#export FZF_DEFAULT_COMMAND="$FZF_DEFAULT_COMMAND -L" # uncomment to follow hidden files
export FZF_DEFAULT_OPTS='--bind ctrl-d:page-down,ctrl-u:page-up'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND" # Applies FZF_DEFAULT_COMMAND for CtrlT
#source $(brew --cellar)/fzf/*/shell/key-bindings.zsh
#source $(brew --cellar)/fzf/*/shell/completion.zsh
