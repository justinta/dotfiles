# Path to Oh My Fish install.
set -gx OMF_PATH "/Users/justin/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/Users/justin/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# Add scripts dir to path
set -x PATH $PATH /Users/justin/Scripts

# Base16 Shell
eval sh $HOME/.config/base16-shell/base16-ocean.dark.sh

# cursor colors
set fish_cursor_default '#a54242' # red
set fish_cursor_insert '#657b83'  # gray
set fish_cursor_visual '#8c9440'  # green

fish_vi_key_bindings

# Alias
alias jenkins 'ssh master'
alias ssh-do 'ssh -i /Users/justin/.ssh/do-jenkins'

alias weather 'curl http://wttr.in/Orem'

