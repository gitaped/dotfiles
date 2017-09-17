#!/bin/bash

set -e

GIT="$HOME/dotfiles/git"
BASH="$HOME/dotfiles/bash"
DOTFILES="$HOME/dotfiles"

packages=( vim-gtk terminator build-essential tmux ack-grep python-dev pyflakes ipcalc gdebi )
echo "Updating Packages Database"
sudo apt-get -qq update
echo "Installing essential packages"
for package in "${!packages[@]}"
do
  echo "Installing ${packages[$package]}"
  sudo apt-get -qqq --yes install "${packages[$package]}"
done

echo "Deleting exisiting dot configurations"
rm -f ~/.vimrc
rm -rf ~/.vim
rm -f ~/.bashrc
rm -f ~/.tmux.conf

echo "Creating symlinks to new locations"
ln -sf "$DOTFILES"/vimrc ~/.vimrc
ln -sf "$DOTFILES"/vim ~/.vim
ln -sf "$DOTFILES"/tmux.conf ~/.tmux.conf

ln -sf "$GIT"/gitconfig ~/.gitconfig
cp "$GIT"/git-prompt.sh ~/.git-prompt.sh
source ~/.git-prompt.sh

ln -sf "$BASH"/bash_aliases ~/.bash_aliases
ln -sf "$BASH"/bash_profile ~/.bash_profile
ln -sf "$BASH"/bash_functions ~/.bash_functions
ln -sf "$BASH"/bashrc ~/.bashrc
source ~/.bashrc
source ~/.bash_aliases
source ~/.bash_functions
source ~/.bash_profile

ln -sf "$DOTFILES"/ackrc ~/.ackrc

mkdir -p ~/.config/terminator
ln -sf "$DOTFILES"/terminator_config ~/.config/terminator/config

echo "Creating src directory"
mkdir ~/src

echo "Installing Vim plugins"
vim +PlugInstall +qall

echo "Success!!!"
echo "dotfiles...done"
