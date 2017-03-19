# Oh My ZSH stuff
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="lambda"

# Colors
source "$HOME/.config/base16-shell/scripts/base16-ocean.sh"

# Global envs
CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"


autoload -U colors && colors
autoload -U compinit
compinit

source $ZSH/oh-my-zsh.sh

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

# Plugins
plugins=(git python pylint)
# Syntax Highlighting #
source $HOME/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

