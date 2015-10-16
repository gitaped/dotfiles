BUNDLE="$HOME/dotfiles/vim/bundle"
GITHUB="https://github.com"
BASH="$HOME/dotfiles/bash"
GIT="$HOME/dotfiles/git"

#TODO: merge these two repos into a hash map
plugins=( Vundle.vim nerdtree syntastic nerdcommenter vim-airline vim-gitgutter vim-signify delimitMate neocomplete.vim tagbar fonts )
repos=( gmarik scrooloose scrooloose scrooloose bling airblade mhinz Raimondi Shougo majutsushi powerline )
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
	ln -sf ~/dotfiles/vimrc ~/.vimrc
	ln -sf ~/dotfiles/vim ~/.vim
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

	#sudo pip install jedi
	vim +PluginInstall +qall
	cd $BUNDLE/fonts
	#bash install.sh
}

essentials(){
	sudo apt-get install build-essential
	sudo apt-get install python
	sudo apt-get install pip
	sudo apt-get install ruby
	sudo apt-get install gem
	sudo apt-get install exuberant-ctags
}

main(){
	get_sudo
	#update_vim
	#essentials
	copy_dots
	create_symlinks
	install_plugins
}

main
clear
