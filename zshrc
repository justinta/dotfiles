# Path to your oh-my-zsh installation.
export ZSH=/home/justin/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="lambda"

# Base16 Shell
# BASE16_SHELL="/Users/justin/.config/base16-shell/base16-ocean.dark.sh"
# source $BASE16_SHELL
source "/home/justin/.config/base16-shell/scripts/base16-ocean.sh"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
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

