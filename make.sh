#!/bin/bash
#Script for creating symlinks from vim home directory to desired dotfiles folder
#Clone repo after creating Github directory in home then execute this script

echo "Deleting exisitng vim configurations"
rm -f ~/.vimrc
rm -f ~/.vim

echo "Creating symlinks"
ln -sf ~/Github/dotfiles/vimrc ~/.vimrc
ln -sf ~/Github/dotfiles/vim ~/.vim

echo "script completed"

