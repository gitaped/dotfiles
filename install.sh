BUNDLE="$HOME/dotfiles/vim/bundle"
GITHUB="https://github.com"
YCM="YouCompleteMe"

plugins=( Vundle.vim nerdtree syntastic vim-surround vim-airline supertab
vim-gitgutter vim-signify vim-fugitive fonts )
repos=( gmarik scrooloose scrooloose tpope bling ervandew airblade mhinz tpope
powerline )  
total=${#plugins[*]}

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
	#cd ~/dotfiles/vim/bundle/YouCompleteMe
	#git submodule update --init --recursive
	#./install.py --clang-completer	
	
	vim +PluginInstall +qall
	cd $BUNDLE/fonts
	bash install.sh
}

basics(){
	sudo apt-get install build-essential
	sudo apt-get install python
	sudo apt-get install pip
	sudo apt-get install ruby
	sudo apt-get install gem
	sudo gem install jekyll
	sudo apt-get install openjdk-7-jdk
}

arduino(){
	pip install ino

}

main(){
	get_sudo
	setup_git
	create_symlinks
	#basics
	install_plugins
	#arduino	
}

main
