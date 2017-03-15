# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="lambda"

source "$HOME/.config/base16-shell/scripts/base16-ocean.sh"

CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(git python pylint)

# User configuration
#export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/pkg/bin:/usr/pkg/sbin:/Users/justin1/Scripts"
# export MANPATH="/usr/local/man:$MANPATH"
#PATH=$PATH:~/Scripts

autoload -U colors && colors
autoload -U compinit
compinit

source $ZSH/oh-my-zsh.sh

# set vi mode
bindkey -v
bindkey '^R' history-incremental-search-backward


#####################
#     Aliases       #
####################
# VirtualEnv Aliases #
alias normal="deactivate; clear; cd"

# Syntax Highlighting #
source $HOME/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

