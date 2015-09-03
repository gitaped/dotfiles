#!/bin/bash

BUNDLE="$HOME/dotfiles/vim/bundle"
VUNDLE="Vundle.vim"
GITHUB="https://github.com"
YCM="YouCompleteMe"
NERD="nerdtree"
SYN="syntastic"

get_sudo(){
	sudo -v
}

setup_git(){
	cp gitconfig "$HOME/.gitconfig"	
}

create_symlinks(){
	echo "Deleting exisiting vim configurations"
	rm  ~/.vimrc
	rm -rf  ~/.vim

	echo "Creating symlinks to new location"
 	ln -sf ~/dotfiles/vimrc ~/.vimrc
	ln -sf ~/dotfiles/vim ~/.vim
}

install_plugins(){
	echo "Installing Vundle plugins"
	mkdir $BUNDLE
	cd $BUNDLE

	echo "Installing Vundle" 
	if [ ! -d $VUNDLE ]; then
		git clone $GITHUB/gmarik/Vundle.vim.git
	else
		echo "Vundle already cloned"
	fi

	echo "Installing YouCompleteMe"
	#sudo apt-get install build-essential cmake
	#sudo apt-get install python-dev
	
	if [ ! -d $YCM ]; then
		git clone $GITHUB/Valloric/YouCompleteMe.git 
	else
		echo "YouCompleteMe already cloned"
	fi
	#cd ~/dotfiles/vim/bundle/YouCompleteMe
	#git submodule update --init --recursive
	#./install.py --clang-completer	
	
	echo "Installing NERD Tree"
	if [ ! -d $NERD ]; then
		git clone $GITHUB/scrooloose/nerdtree.git
	else
		echo "NERD tree already cloned"
	fi 
	
	echo "Installing Syntastic"
	if [ ! -d $SYN ]; then
		git clone $GITHUB/scrooloose/syntastic
	else
		echo "Syntastic already cloned"
	fi

	vim +PluginInstall +qall
}


main(){
	get_sudo
	setup_git
	create_symlinks
	install_plugins
	
}

main
