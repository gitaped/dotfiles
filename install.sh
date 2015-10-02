BUNDLE="$HOME/dotfiles/vim/bundle"
GITHUB="https://github.com"
BASH="$HOME/dotfiles/bash"
YCM="YouCompleteMe"

plugins=( Vundle.vim nerdtree syntastic nerdcommenter vim-airline supertab vim-gitgutter vim-signify delimitMate neocomplete.vim fonts )
repos=( gmarik scrooloose scrooloose scrooloose bling ervandew airblade mhinz Raimondi Shougo powerline )
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
	cp gitconfig "$HOME/.gitconfig"
	cd $BASH
	#chmod 777 ~/.bashrc
	cp bash_aliases "$HOME/.bash_aliases"
	#sudo cat bashrc >> "$HOME/.bashrc"
	. ~/.bash_aliases  
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

	#echo "Installing YouCompleteMe"
	#sudo apt-get install build-essential cmake
	#sudo apt-get install python-dev

	#if [ ! -d $YCM ]; then
	#	git clone $GITHUB/Valloric/$YCM.git
	#else
	#	echo "YouCompleteMe already cloned"
	#fi
	#cd $BUNDLE/YouCompleteMe
	#git submodule update --init --recursive
	#./install.py --clang-completer

	vim +PluginInstall +qall
	cd $BUNDLE/fonts
	bash install.sh
}

essentials(){
	sudo apt-get install build-essential
	sudo apt-get install python
	sudo apt-get install pip
	sudo apt-get install ruby
	sudo apt-get install gem
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
