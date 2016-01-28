#!/usr/bin/bash

BUNDLE="$HOME/dotfiles/vim/bundle"
GITHUB="https://github.com"
BASH="$HOME/dotfiles/bash"
DOTFILES="$HOME/dotfiles"
GIT="$HOME/dotfiles/git"
YCM="YouCompleteMe"

declare -A repos
repos=( [gmarik]=Vundle.vim [scrooloose]=nerdtree [scrooloose]=syntastic 
		[scrooloose]=nerdcommenter [bling]=vim-airline [airblade]=vim-gitgutter 
		[mhinz]=vim-signify [Raimondi]=delimitMate [majutsushi]=tagbar 
		[nathanaelkane]=vim-indent-guides [powerline]=fonts 
		[tpope]=vim-surround [ctrlpvim]=ctrlp.vim [Chiel92]=vim-autoformat 
		[tpope]=vim-abolish [terryma]=vim-multiple-cursors [tmhedberg]=SimpylFold 
		[xolox]=vim-easytags [helino]=vim-json [pangloss]=vim-javascript)

get_sudo(){
	sudo -v
}

update_vim(){
	sudo apt-get update
	sudo apt-get install vim
	sudo apt-get install vim-gnome  #vim installed with lua
}

create_symlinks(){
	echo "Deleting exisiting vim configurations"
	rm  ~/.vimrc
	rm -rf  ~/.vim

	echo "Creating symlinks to new location"
	cd $DOTFILES
	ln -sf $DOTFILES/vimrc ~/.vimrc
	ln -sf $DOTFILES/vim ~/.vim
	
	cd $GIT
	ln -sf $GIT/gitconfig ~/.gitconfig 
	ln -sf $GIT/git-prompt.sh ~/.git-prompt.sh

	source ~/.git-prompt.sh

	cd $BASH
	ln -sf $BASH/bash_aliases ~/.bash_aliases
	ln -sf $BASH/bash_profile ~/.bash_profile
	ln -sf $BASH/bash_functions ~/.bash_functions
	ln -sf $BASH/bashrc ~/.bashrc
	
	source ~/.bash_aliases  
	source ~/.bash_profile
	source ~/.bash_functions
	source ~/.bashrc
}

install_plugins(){
	echo "Installing Vundle plugins"
	if [ ! -d "$BUNDLE" ]
	then
		mkdir $BUNDLE
	else
		echo "bundle directory already created"
	fi
	cd $BUNDLE

	for repo in "${!repos[@]}"
	do
		echo "Installing ${repos[$repo]}"
		if [ ! -d "${repos[$repo]}" ]
		then
			git clone $GITHUB/"$repo"/"${repos[$repo]}".git
		else
			echo "${repos[$repo]} already cloned, updating to latest master"
			#git pull origin master
		fi
	done
	
   ## YouCompleteMe
	#if [ ! -d "YCM" ]; then
		#git clone $GITHUB/Valloric/"$YCM".git
	#else
		#echo "$YCM already cloned"
	#fi
	#cd $BUNDLE/$YCM
	#git submodule update --init --recursive
   # ./install.py --clang-completer

	vim +PluginInstall +qall
}

fonts(){
	cd $BUNDLE/fonts
	bash install.sh
}

essentials(){
	sudo apt-get install build-essential
	sudo apt-get install cmake
	sudo apt-get install exuberant-ctags
	sudo apt-get install tidy	# HTML autoformatting
	sudo apt-get install ack-grep
}

python_essentials(){
	sudo pip install --upgrade pep8
	sudo pip install --upgrade autopep8
	sudo pip install --upgrade flake8
	sudo pip install --upgrade virtualenv
	sudo pip install --upgrade virtualenvwrapper
	sudo apt-get install python-dev
	sudo apt-get install pyflakes
}

node_essentials(){
	clear
}

main(){
	get_sudo
	update_vim
	#essentials
	#python_essentials
	#node_essentials
	create_symlinks
	install_plugins
	#fonts
}

main
clear
