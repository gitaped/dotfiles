#!/bin/bash

sudo -v || exit

set -xe

DOTFILES=~/dotfiles
GIT=$DOTFILES/git
FISH=$DOTFILES/fish

# TODO: prompt for installing packages
# pip install -r $DOTFILES/requirements.txt
# curl https://sh.rustup.rs -sSf | bash -s -- -y
# cat $DOTFILES/cargo.list | xargs cargo install

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
  mkdir -p ~/.config/terminator
  ln -sf $DOTFILES/terminator_config ~/.config/terminator/config
fi

mkdir -p ~/src
mkdir -p ~/go

rm -f ~/.vimrc
rm -rf ~/.vim
rm -f ~/.tmux.conf
rm -rf ~/.config/fish

ln -sf $DOTFILES/vimrc ~/.vimrc
ln -sf $DOTFILES/vim ~/.vim
ln -sf $DOTFILES/tmux.conf ~/.tmux.conf

mkdir -p ~/.config/ripgrep
ln -sf $DOTFILES/ripgreprc ~/.config/ripgrep/ripgreprc

ln -sf $GIT/gitconfig ~/.gitconfig

mkdir -p ~/.config/fish/
touch $FISH/work.fish
ln -sf $FISH/config.fish ~/.config/fish/config.fish
ln -sf $FISH/work.fish ~/.config/fish/work.fish
source ~/.config/fish/config.fish

# Set local git config for the dotfiles repo
git config user.name "Ansley Peduru"
git config user.email "ansleypeduru96@gmail.com"

# cp $GIT/git-prompt.sh ~/.git-prompt.sh
# source ~/.git-prompt.sh

vim +PlugInstall +qall

exit 0
