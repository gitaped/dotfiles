#!/bin/sh

PLUGGED="$HOME/dotfiles/vim/plugged"
GITHUB="https://github.com"
BASH="$HOME/dotfiles/bash"
DOTFILES="$HOME/dotfiles"
GIT="$HOME/dotfiles/git"

echo "Deleting exisiting dot configurations..."
rm ~/.vimrc
rm ~/.bashrc
if [ -e  ~/.bash_aliases ];then
	rm ~/.bash_aliases
fi
if [ -e  ~/.bash_profile ];then
	rm ~/.bash_profile
fi
rm ~/.ackrc
rm -rf ~/.vim
