export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcEx
export PS1="\[\e[1;32m\]\u\[\e[1;37m\]:\[\e[1;34m\]\w\[\e[33m\]\$(parse_git_branch)\[\e[1;37m\]$ \[\e[0m\]"

# Use vi key bindings
set -o vi

# Use partial search history with up and down arrows
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# History config
shopt -s histappend # append rather than overwrite history on shell exit
export PROMPT_COMMAND="history -a" # append new history lines to history file
export HISTSIZE=2000
export HISTFILESIZE=5000
export HISTCONTROL="ignoreboth" # ignore duplicates and commands with a leading space
export HISTIGNORE="c"

# General config
export VISUAL="nvim"
export EDITOR="vi"

# Dotfiles config
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles" --work-tree="$HOME"'
alias dotfiles-list="dotfiles ls-tree -r main --name-only"

# General aliases
alias c="clear"
alias cat="bat --plain --paging=never"
alias ccat="clear ; cat"
alias diff="colordiff -u"
alias la="ls -Al"
alias ll="ls -l"
alias l.="ls -ld .?*"
alias myip="curl -4 icanhazip.com"
alias myip6="curl -6 icanhazip.com"
alias pod="echo $OLDPWD"
alias service='echo ${PWD##*/}'
alias week="date +%W"

# Navigation aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# fzf aliases
alias vf='vim $(fzf)'
alias nvf='nvim $(fzf)'

# fzf config
export FZF_DEFAULT_COMMAND="fd --type f"
export FZF_DEFAULT_OPTS="--preview 'bat --color=always {}'"

# Git aliases
alias ga="git add"
alias gb="git checkout -b"
alias gbm="git branch --merged"
alias gc="git checkout"
alias gcm="git commit -m"
alias gd="git diff"
alias gdc="git diff --cached"
alias gl="git log"
alias gs="git status"
alias version='git describe --tags $(git rev-list --tags --max-count=1)'

# Javascript config
export NODE_OPTIONS=--openssl-legacy-provider

# Kubernetes aliases
alias k="kubectl"
alias kd="kubectl describe"
alias kdp="kubectl describe pod"
alias kgn="kubectl get namespace"
alias kgp="kubectl get pod"
alias kgpa="kubectl get pod --all-namespaces"
alias kgc="kubectl get pods -o jsonpath='{.spec.containers[*].name}'"

# Kubernetes config
export KUBECTL_EXTERNAL_DIFF="colordiff -N -u"
alias kubectl="kubecolor"
alias k9s="k9s --readonly"
export K9S_CONFIG_DIR="$HOME/.config/k9s"

# Terraform aliases
alias tf="terraform"
alias tfclean="sudo terraform fmt && tflint && terraform-docs ."

# Terraform config
export TFENV_ARCH=arm64
export TFENV_CONFIG_DIR=~/.tfenv

# Vim aliases
alias vim="nvim"

# Find current git branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Recursive find and replace
replace() {
    rg -l "$1" | xargs sed -i '' -e "s/$1/$2/g"
}

export PATH="/opt/local/bin:/opt/local/sbin:$HOME/go/bin:$HOME/.tfenv/bin:$HOME/Library/Python:$PATH"
