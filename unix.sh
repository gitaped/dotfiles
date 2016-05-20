#!/usr/bin/bash


gnome=(gnome-session-flashback)
sys_tools=(gnome-tweak-tool ack)
#ui=(plank conky-manager)
#deb_repos=(ricotz/docky teejee2008/ppa)
git_repos=(  )
vim=( vim vim-gnome vim-gtk )
packages=( build-essential shellcheck cmake exuberant-ctags tmux ack-grep
			astyle python-dev pyflakes latexmk zsh )
python=( autopep8 pep8)





sudo apt-get update
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

main(){
	get_sudo
	# add_repos
	install_packages
	invalidate_sudo
}

main
clear
