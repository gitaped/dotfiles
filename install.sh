#!/usr/bin/bash

PLUGGED="$HOME/dotfiles/vim/plugged"
GITHUB="https://github.com"
BASH="$HOME/dotfiles/bash"
ZSH="$HOME/dotfiles/zsh"
DOTFILES="$HOME/dotfiles"
GIT="$HOME/dotfiles/git"
YCM="YouCompleteMe"

# hooray for Vim 8.0
get_sudo(){
	if [[ $UID != 0 ]]; then
		echo "Please run this script with sudo"
		echo "sudo bash $0"
		exit 1
	fi
}

confirm_success(){
	echo -en "\r"
	if [ $? -eq 0 ]; then
		echo "[✓] Installed $1 "
	else
		echo "[✖] Installing $1 failed "
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
	rm  ~/.vimrc
	rm -rf ~/.vim
	rm ~/.zshrc
	rm ~/.bashrc
	rm -rf  ~/.vim

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

	source ~/.bash_aliases
	source ~/.bash_profile
	source ~/.bash_functions
	source ~/.bashrc

	ln -sf "$DOTFILES"/ackrc ~/.ackrc
}

# TODO: fix this
install_plugins(){
	newline
	echo "Installing Plugins..."

	# YouCompleteMe
	# Only install YCM ONCE, when the time comes YCM will prompt you
	# (internally) in vim to recompile
	if [ "$1" == ycm ]; then
		echo -n "[.] Installing $YCM"
		git clone "$GITHUB"/Valloric/"$YCM".git &> /dev/null
		cd "$PLUGGED"/"$YCM"
		git submodule update --init --recursive &> /dev/null
		./install.py --clang-completer &> /dev/null
		confirm_success $YCM
	fi

	vim +PlugInstall +qall

}

essentials(){
	newline
	echo "Installing essential packages..."
	for package in "${!packages[@]}"
	do
		echo -n "[.] Installing ${packages[$package]}"
		sudo apt-get -qq --yes install "${packages[$package]}"
		confirm_success "${packages[$package]}"
	done
}

python_essentials(){
	newline
	echo "Installing Python packages..."
	for package in "${!python[@]}"
	do
		echo -n "[.] Installing ${python[$package]}"
		sudo pip install --quiet --upgrade "${python[$package]}"
		confirm_success "${python[$package]}"
	done
}

main(){
	get_sudo
	update_vim
	essentials
	python_essentials
	create_symlinks
	install_plugins "$@"
}

main "$@"
newline
echo "dotfiles...Done"
