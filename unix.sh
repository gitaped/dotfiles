#!/usr/bin/bash


gnome=(gnome-session-flashback)
sys_tools=(gnome-tweak-tool ack nmap )
git_repos=(  )
pi-rho/dev

vim=( vim vim-gnome vim-gtk )
packages=( build-essential shellcheck cmake exuberant-ctags tmux ack-grep
			astyle python-dev pyflakes latexmk zsh )
python=( autopep8 pycodestyle )

sudo apt-get install -y

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


#add_repos(){
	#for repo in deb_repos:
		#apt-add-repository ppa:${repo}
#}


install_packages(){
	for package in packages:
		apt-get install ${package}

}

install_python_packages(){
	for package in python:
		pip install ${package}
} 

main(){
	get_sudo
	# add_repos
	install_packages
	invalidate_sudo
}

main
clear
