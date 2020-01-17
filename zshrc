# Oh My ZSH stuff
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="lambda"
source $ZSH/oh-my-zsh.sh

# Colors
source "$HOME/.config/base16-shell/scripts/base16-tomorrow-night.sh"

# Global envs
CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

autoload -U colors && colors
autoload -U compinit && compinit

# set vi mode
bindkey -v
bindkey '^R' history-incremental-search-backward

# Set title bar name
case $TERM in
    xterm*)
        precmd () {print -Pn "\e]0;%~\a"}
        ;;
esac

# VirtualEnv Aliases #
alias normal="deactivate; clear; cd"

# Work Aliases
alias tech="ssh tech -t \"tmux a -d -t ostk\""

# Git Aliases
alias co="git checkout master && git pull && git checkout -b $1"

# Plugins
plugins=(git python pylint)
# Syntax Highlighting #
source $HOME/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
