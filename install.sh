#!/bin/bash

sudo -v || exit

set -xe

DOTFILES=~/dotfiles
GIT=$DOTFILES/git
BASH=$DOTFILES/bash

# TODO: prompt for installing packages
# pip install -r $DOTFILES/requirements.txt
# curl https://sh.rustup.rs -sSf | bash -s -- -y
# cat $DOTFILES/cargo.list | xargs cargo install

# apt update
# cat $DOTFILES/packages.list | xargs sudo apt-get --yes install
# mkdir -p ~/.config/terminator
# ln -sf $DOTFILES/terminator_config ~/.config/terminator/config


mkdir -p ~/src

rm -f ~/.vimrc
rm -rf ~/.vim
rm -f ~/.tmux.conf

ln -sf $DOTFILES/vimrc ~/.vimrc
ln -sf $DOTFILES/vim ~/.vim
ln -sf $DOTFILES/tmux.conf ~/.tmux.conf

ln -sf $GIT/gitconfig ~/.gitconfig
cp $GIT/git-prompt.sh ~/.git-prompt.sh
source ~/.git-prompt.sh

vim +PlugInstall +qall

exit 0
