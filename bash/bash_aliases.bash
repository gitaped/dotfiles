# unalias 'alias_name' if stuck

# Git
alias gbr='git branch'
alias gcl='git clone'
alias gdf='git diff'
alias gdm='git diff master..$(git name-rev --name-only HEAD)'
alias gfa='git fetch --all'
alias glg='git log --graph --oneline'
alias grv='git remote -v'
alias gsh='git show'
alias gst='git status'

# Directory
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias doc='cd ~/Documents && ls'
alias down='cd ~/Downloads && ls'
alias dot='cd ~/dotfiles && ls'
alias box='cd ~/Dropbox && ls'
alias evertz='cd ~/evertz && ls'
alias src='cd ~/src && ls'

# Letters
alias c='clear'
alias h='history | less +G'

# Servers
alias js='jekyll serve'

# tmux - tmux force support 256 colours
alias tmux='tmux -2'

# Ack is different on Ubuntu
alias ack='ack-grep'

# Grep
alias gri='grep -Hinr --exclude-dir=".git" --color=always'

# Number of lines of code
alias lines='find . | wc -l'
