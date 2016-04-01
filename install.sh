#!/usr/bin/bash

BUNDLE="$HOME/dotfiles/vim/bundle"
GITHUB="https://github.com"
BASH="$HOME/dotfiles/bash"
DOTFILES="$HOME/dotfiles"
GIT="$HOME/dotfiles/git"
YCM="YouCompleteMe"

declare -A repos
repos=( [gmarik]=Vundle.vim [scrooloose]=nerdtree [scrooloose]=syntastic
		[scrooloose]=nerdcommenter [powerline]=fonts
		[majutsushi]=tagbar [tmhedberg]=SimpylFold [cohama]=lexima.vim
		[tpope]=vim-surround [ctrlpvim]=ctrlp.vim [Chiel92]=vim-autoformat
		[ntpeters]=vim-better-whitespace [cohama]=lexima.vim
		[vim-airline]=vim-airline [vim-airline]=vim-airline-themes
		[mhinz]=vim-signify [henrik]=vim-indexed-search )

vim=( vim vim-gnome vim-gtk )
packages=( build-essential shellcheck cmake exuberant-ctags tmux ack-grep
			astyle python-dev pyflakes )
python=( autopep8 pep8 virtualenv virtualenvwrapper)

get_sudo(){
	sudo -v
}

update_vim(){
	sudo apt-get update
	for package in "${!vim[@]}"
	do
		echo "Installing ${vim[$package]}"
		sudo apt-get -qq --yes install "${vim[$package]}"
	done
}

create_symlinks(){
	echo "Deleting exisiting vim configurations"
	rm  ~/.vimrc
	rm -rf  ~/.vim

	echo "Creating symlinks to new locations"
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

	source ~/*.bash
	#source ~/.bash_aliases
	#source ~/.bash_profile
	#source ~/.bash_functions
	#source ~/.bashrc
}

install_plugins(){
	echo "Installing Vundle plugins"
	if [ ! -d "$BUNDLE" ]
	then
		mkdir "$BUNDLE"
	else
		echo "bundle directory already created"
	fi
	cd "$BUNDLE"

	for repo in "${!repos[@]}"
	do
		echo "Installing ${repos[$repo]}"
		if [ ! -d "${repos[$repo]}" ]
		then
			git clone $GITHUB/"$repo"/"${repos[$repo]}".git &> /dev/null
		else
			echo "${repos[$repo]} already cloned, updating to latest master"
			cd "$BUNDLE"/"${repos[$repo]}" || exit
			git pull origin master &> /dev/null
			cd ..
		fi
	done

	# YouCompleteMe
	if [ "$1" == ycm ]; then
		if [ ! -d "$YCM" ]; then
			git clone "$GITHUB"/Valloric/"$YCM".git
		else
			echo "$YCM already cloned"
		fi
		cd "$BUNDLE"/"$YCM"
		git submodule update --init --recursive
		./install.py --clang-completer
	fi

	vim +PluginUpdate +qall
	vim +PluginInstall +qall
}

fonts(){
	cd "$BUNDLE"/fonts
	bash install.sh
}

essentials(){
	for package in "${!packages[@]}"
	do
		echo "Installing ${packages[$package]}"
		sudo apt-get -qq --yes install "${packages[$package]}"
	done
}

python_essentials(){
	for package in "${!python[@]}"
	do
		echo "Installing ${python[$package]}"
		sudo pip install --quiet --upgrade "${python[$package]}"
	done
}

main(){
	#get_sudo
	#update_vim
	#essentials
	#python_essentials
	#create_symlinks
	install_plugins "$@"
	#fonts
}

main "$@"
clear
