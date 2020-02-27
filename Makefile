ls:
	lsrc -d ~/dotfiles

up:
ifeq ($(shell uname),Darwin)
	rcup -d ~/dotfiles -vv
else
	rcup -d ~/dotfiles -t linux -vv
endif

down:
	rcdn -d ~/dotfiles -vv

