#!/bin/bash
#Script for creating symlinks from vim home directory to desired dotfiles folder
#Clone repo after creating Github directory in home then execute this script

echo "Deleting exisiting vim configurations"
rm  ~/.vimrc
rm -rf  ~/.vim

echo "Creating symlinks"
ln -sf ~/dotfiles/vimrc ~/.vimrc
ln -sf ~/dotfiles/vim ~/.vim

cd ~/dotfiles/vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git
vim +PluginInstall +qall
