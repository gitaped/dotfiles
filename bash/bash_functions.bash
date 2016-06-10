# Make a directory and immediately change into it
mkd() { mkdir -p "$"1"" && cd "$1"; }

# Change a directory and list all contents
cl() { cd "$@" && la; }

# Generic extraction tool
extract() {
if [ -z "$1" ]; then
	echo "Usage:"
	echo "  extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
	echo
else
	if [ -f "$1" ]; then
		case "$1" in
			*.tar.bz2)   tar xjf "$1"     ;;
			*.tar.gz)    tar xzf "$1"     ;;
			*.bz2)       bunzip2 "$1"     ;;
			*.rar)       unrar e "$1"     ;;
			*.gz)        gunzip "$1"      ;;
			*.tar)       tar xf "$1"      ;;
			*.tbz2)      tar xjf "$1"     ;;
			*.tgz)       tar xzf "$1"     ;;
			*.zip)       unzip "$1"       ;;
			*.Z)         uncompress "$1"  ;;
			*.7z)        7z x "$1"        ;;
			*)           echo "'$1' cannot be extracted via extract()" ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
fi
}

# Source all bash files
srcbsh() {
	source ~/.bashrc
	source ~/.bash_aliases.bash
	source ~/.bash_functions.bash
	source ~/.bash_profile.bash
	echo "sourced all bash files"
}

# Display 256 terminal supported colours
colours() {
	local count=0
	local cols=$(tput cols)
	for i in {0..255}; do
		((count+=4))
		if [ "$count" -gt "$cols" ]; then
			printf "\n"
			count=4
		fi
	printf "\x1b[38;5;${i}m%03s " "${i}"
	done
	printf "\n"
}

# Find file by extension
ffe(){
	if [ -z "$1" ];then
		echo "Usage:"
		echo " ffe <file-extension>"
		echo
	else
		find . -type f -name \*."$1"
	fi
}
