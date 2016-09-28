#!/bin/sh

PLUGGED="$HOME/dotfiles/vim/plugged"
BASH="$HOME/dotfiles/bash"
DOTFILES="$HOME/dotfiles"
GIT="$HOME/dotfiles/git"

echo "Deleting exisiting dot configurations..."
rm -f ~/.vimrc ~/.bashrc ~/.bash_aliases ~/.bash_functions ~/.bash_profile ~/.ackrc ~/.tmux.conf
rm -rf ~/.vim

echo "Creating symlinks to new locations..."
cd "$DOTFILES"
ln -sf "$DOTFILES"/vimrc ~/.vimrc
ln -sf "$DOTFILES"/vim ~/.vim
ln -sf "$DOTFILES"/tmux.conf ~/.tmux.conf

cd "$GIT"
ln -sf "$GIT"/gitconfig ~/.gitconfig
ln -sf "$GIT"/git-prompt.sh ~/.git-prompt.sh

source ~/.git-prompt.sh

cd "$BASH"
ln -sf "$BASH"/bash_aliases ~/.bash_aliases
ln -sf "$BASH"/bash_profile ~/.bash_profile
ln -sf "$BASH"/bash_functions ~/.bash_functions
ln -sf "$BASH"/bashrc ~/.bashrc

source ~/.bashrc
source ~/.bash_aliases
source ~/.bash_functions
source ~/.bash_profile

ln -sf "$DOTFILES"/ackrc ~/.ackrc
