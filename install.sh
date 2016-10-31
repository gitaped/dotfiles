#!/bin/sh

GIT="$HOME/dotfiles/git"
BASH="$HOME/dotfiles/bash"
DOTFILES="$HOME/dotfiles"
PLUGGED="$HOME/dotfiles/vim/plugged"

# hooray for Vim 8.0
get_sudo(){
	if [[ $UID != 0 ]]; then
		echo "Please run this script with sudo"
		echo "sudo bash $0"
		exit 1
	fi
}

invalidate_sudo(){
	sudo -K
}

confirm_success(){
	echo -en "\r"
	if [ $? -eq 0 ]; then
		echo "[✓] Installed $1 "
	else
		echo "[✗] Installing $1 failed "
	fi
}

newline(){
	printf "\n"
}

update_vim(){
	echo "Updating Packages..."
	sudo apt-get -qq update
	newline
	echo "Installing Vim essentials..."
	for package in "${!vim[@]}"
	do
		echo -n "[.] Installing ${vim[$package]}"
		sudo apt-get -qq --yes install "${vim[$package]}"
		confirm_success "${vim[$package]}"
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

fzf(){
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install
}

main(){
	get_sudo
	update_vim
	create_symlinks
	# fzf
	install_plugins
	invalidate_sudo
}

main
newline
echo "dotfiles...Done"
