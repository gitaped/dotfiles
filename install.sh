#!/bin/bash

set -e

DOTFILES="$HOME/dotfiles"
GIT="$DOTFILES/git"
BASH="$DOTFILES/bash"

echo "Updating Packages Database"
sudo apt-get -qqq update
echo "Installing essential Debian packages"
cat "$DOTFILES"/packages.list | xargs sudo apt-get -qqq --yes install
echo "Installing global Python packages"
pip install -r "$DOTFILES"/requirements.txt

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
mkdir "$HOME"/src

echo "Installing Vim plugins"
vim +PlugInstall +qall

echo "Success!!!"
echo "dotfiles...done"
