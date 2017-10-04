#!/bin/bash
apt-get -y install software-properties-common
apt-get -y install python-dev python-pip python3-dev python3-pip
apt-get -y install ctags vim-doc vim-scripts indent
add-apt-repository ppa:neovim-ppa/stable
add-apt-repository ppa:jonathonf/vim
apt update
apt-get -y install neovim
apt-get -y install vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/macwoj/dotfiles.git
cp ./dotfiles/.vimrc ~
ln -s ~/.vimrc ~/.config/nvim/init.vim