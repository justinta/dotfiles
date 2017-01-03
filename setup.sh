#! /bin/sh

## Puts dotfiles where they need to go
## Installs dependencies like lock, vundle

dotfiles=$PWD

place_dots() {
    cp -r $dotfiles/tmux.conf $HOME/.tmux.conf
    cp -r $dotfiles/vimrc $HOME/.vimrc
    cp -r $dotfiles/zshrc $HOME/.zshrc
    
    if [ ! -d '$HOME/.config/' ]; then
        cp -r $dotfiles/config $HOME/.config
    else
        cp -r $dotfiles/config/* $HOME/.config/
    fi
}

install_lock_deps() {
    pkgs='pkg-config libxcb1 libpam-dev libcairo-dev libxcb-xinerama0-dev libev-dev libx11-dev libx11-xcb-dev libxkbcommon0 libxkbcommon-x11-0 libxcb-dpms0-dev libxcb-image0-dev libxcb-util0-dev libxcb-xkb-dev libxkbcommon-x11-dev libxkbcommon-dev imagemagick scrot utils-linux git'
    apt -y install $pkgs

    # i3lock-color install
    git clone https://github.com/chrjguill/i3lock-color $HOME/Downloads/i3lock-color
    cd $HOME/Downloads/i3lock-color
    make install
    cd $dotfiles
}

install_lock() {
    # lock has some deps
    install_lock_deps

    # i3lock-fancy dualmonitors
    git clone https://github.com/meskarune/i3lock-fancy $HOME/Downloads/i3lock-fancy
    cp -r $HOME/Downloads/i3lock-fancy/icons/ /usr/local/bin

    # checkout dualmonitors 
    cd $HOME/Downloads/i3lock-fancy/
    git checkout dualmonitors
    cp -r $HOME/Downloads/i3lock-fancy/lock /usr/local/bin
    cp -r $HOME/Downloads/i3lock-fancy/lock.png /usr/local/bin

    cd $dotfiles
}

install_vundle() {
    # ensure vim is installed
    if [ ! -f `which vim` ]; then
        apt -y install vim
    fi
    # install vundle
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    # install plugins
    vim +PluginInstall +qall
}

install_rofi() {
    apt -y install rofi
}

setup() {
    apt -y install tmux zsh
    place_dots
    install_lock
    install_vundle
    install_rofi
}

setup
