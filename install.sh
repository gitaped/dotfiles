BUNDLE="$HOME/dotfiles/vim/bundle"
GITHUB="https://github.com"
BASH="$HOME/dotfiles/bash"
DOTFILES="$HOME/dotfiles"
GIT="$HOME/dotfiles/git"

#TODO: merge these two repos into a hash map
plugins=( Vundle.vim nerdtree syntastic nerdcommenter vim-airline vim-gitgutter vim-signify delimitMate neocomplete.vim tagbar vim-indent-guides fonts )
repos=( gmarik scrooloose scrooloose scrooloose bling airblade mhinz Raimondi Shougo majutsushi nathanaelkane powerline )
total=${#plugins[*]}

get_sudo(){
	sudo -v
}

update_vim(){
	sudo apt-get update
	sudo apt-get install vim
	sudo apt-get install vim-gnome #required for neocomplete.vim
}

copy_dots(){
	echo "Copying dotfiles"
	cd $GIT
	cp gitconfig "$HOME/.gitconfig"
	cd $BASH
	cp bash_aliases "$HOME/.bash_aliases"
	cp bash_profile "$HOME/.bash_profile"
	cp bash_functions "$HOME/.bash_functions"
	cp bashrc "$HOME/.bashrc"
	. ~/.bash_aliases  
	. ~/.bash_profile
	. ~/.bash_functions
	. ~/.bashrc
}

create_symlinks(){
	echo "Deleting exisiting vim configurations"
	rm  ~/.vimrc
	rm -rf  ~/.vim

	echo "Creating symlinks to new location"
	cd $DOTFILES
	ln -sf $DOTFILES/vimrc ~/.vimrc
	ln -sf $DOTFILES/vim ~/.vim
	
	cd $BASH
	ln -sf $BASH/bash_aliases ~/.bash_aliases
	ln -sf $BASH/bash_profile ~/.bash_profile
	ln -sf $BASH/bash_functions ~/.bash_functions
	ln -sf $BASH/bashrc ~/.bashrc
	
	. ~/.bash_aliases  
	. ~/.bash_profile
	. ~/.bash_functions
	. ~/.bashrc

	cd $GIT
	ln -sf $GIT/gitconfig ~/.gitconfig 
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

	for (( p=0; p<=(( $total -1 )); p++ ))
	do
		echo "Installing ${plugins[$p]}"
		if [ ! -d "${plugins[$p]}" ]
		then
			git clone $GITHUB/"${repos[$p]}"/"${plugins[$p]}".git
		else
			echo "${plugins[$p]} already cloned"
		fi
	done

	vim +PluginInstall +qall
}

fonts(){
	cd $BUNDLE/fonts
	#bash install.sh
}

essentials(){
	sudo apt-get install build-essential
	sudo apt-get install exuberant-ctags
	sudo pip install jedi
	sudo apt-get install pyflakes
}

main(){
	get_sudo
	#update_vim
	#essentials
	#copy_dots
	create_symlinks
	install_plugins
	#fonts
}

main
clear
