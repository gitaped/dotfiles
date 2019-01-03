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
rm -f ~/.bashrc
rm -f ~/.tmux.conf

ln -sf $DOTFILES/vimrc ~/.vimrc
ln -sf $DOTFILES/vim ~/.vim
ln -sf $DOTFILES/tmux.conf ~/.tmux.conf

ln -sf $GIT/gitconfig ~/.gitconfig
cp $GIT/git-prompt.sh ~/.git-prompt.sh
source ~/.git-prompt.sh

ln -sf $BASH/bash_aliases ~/.bash_aliases
ln -sf $BASH/bash_profile ~/.bash_profile
ln -sf $BASH/bash_functions ~/.bash_functions
ln -sf $BASH/bashrc ~/.bashrc
source ~/.bashrc
source ~/.bash_aliases
source ~/.bash_functions
source ~/.bash_profile

vim +PlugInstall +qall

exit 0
