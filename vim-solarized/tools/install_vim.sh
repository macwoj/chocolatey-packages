#!/bin/bash
sudo apt-get -y install software-properties-common
sudo apt-get -y install python-dev python-pip python3-dev python3-pip
sudo apt-get -y install ctags vim-doc vim-scripts indent
sudo add-apt-repository -yu ppa:neovim-ppa/stable
sudo add-apt-repository -yu ppa:jonathonf/vim
sudo apt-get update
sudo apt-get -y install neovim
sudo apt-get -y install vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/macwoj/dotfiles.git
cp ./dotfiles/.vimrc ~
mkdir -p ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim
vim -c ':PlugInstall' -c ':q' -c ':q'
nvim -c ':PlugInstall' -c ':q' -c ':q'