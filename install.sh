#!/bin/bash

GIT="$HOME/dotfiles/git"
BASH="$HOME/dotfiles/bash"
DOTFILES="$HOME/dotfiles"

# TODO: Rust tools and stuff
# rust=()

packages=( vim build-essential tmux ack-grep python-dev pyflakes clang )
install_packages(){
	echo "Updating Packages..."
	sudo apt-get -qq update
	newline
	echo "Installing Vim essentials..."
	for package in "${!packages[@]}"
	do
		echo -"Installing ${packages[$package]}"
		sudo apt-get -qq --yes install "${packages[$package]}"
		confirm_success "${packages[$package]}"
	done
}

create_symlinks(){
	newline
	echo "Deleting exisiting dot configurations..."
	rm -f ~/.vimrc
	rm -rf ~/.vim
	rm -f ~/.bashrc

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
	ln -sf "$BASH"/bash_aliases.bash ~/.bash_aliases.bash
	ln -sf "$BASH"/bash_profile.bash ~/.bash_profile.bash
	ln -sf "$BASH"/bash_functions.bash ~/.bash_functions.bash
	ln -sf "$BASH"/bashrc ~/.bashrc

	source ~/.bashrc
	source ~/.bash_aliases.bash
	source ~/.bash_functions.bash
	source ~/.bash_profile.bash

	ln -sf "$DOTFILES"/ackrc ~/.ackrc
}

install_plugins(){
	vim +PlugInstall +qall
}

main(){
	get_sudo
	update_vim
  install_packages
	create_symlinks
	install_plugins
	invalidate_sudo
}

main
newline
echo "dotfiles...Done"
