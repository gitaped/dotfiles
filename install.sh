#!/bin/bash

set -xe

DOTFILES=~/dotfiles

# TODO: prompt for installing packages
# pip install -r $DOTFILES/requirements.txt
# curl https://sh.rustup.rs -sSf | bash -s -- -y
# cat $DOTFILES/cargo.list | xargs cargo install

if [ ! -d $DOTFILES ]; then
    git clone git@github.com:apeduru/dotfiles.git $DOTFILES
fi

exit 1

if [ "$(uname)" == "Darwin"  ]; then
  if  [ ! -e $(which brew) ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
  brew update
  brew cask install iterm2
  brew tap thoughtbot/formulae
  cat $DOTFILES/packages/macos.list | xargs brew install
else
  apt update
  cat $DOTFILES/packages.list | xargs sudo apt-get --yes install
fi

# Set local git config for the dotfiles repo
git config user.name "Ansley Peduru"
git config user.email "ansleypeduru96@gmail.com"

exit 0
