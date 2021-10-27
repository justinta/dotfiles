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

# direnv
eval "$(direnv hook zsh)"

# Work Aliases

# Git Aliases
alias co="git checkout master && git pull && git checkout -b $1"
alias gs="git status"
alias gaa="git add -A"
alias grs="git rs"
alias grc="git rc"

# Venv 
alias activate="source $HOME/.envs/$1/bin/activate"


#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-16.0.1.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.11.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_291.jdk/Contents/Home
#export JRE_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_291.jdk/Contents/Home

export PATH=$PATH:$JAVA_HOME/bin

# Plugins
plugins=(git python pylint kubectl)
# Syntax Highlighting #
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters


# The next line enables shell command completion for gcloud.
if [ -f '/Users/juanderson/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/juanderson/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
eval "$(direnv hook zsh)"
