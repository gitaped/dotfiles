ls:
	lsrc -d ~/dotfiles

up:
ifeq ($(shell uname),Darwin)
	rcup -d ~/dotfiles -v
else
	rcup -d ~/dotfiles -t linux -v
endif

down:
	rcdn -d ~/dotfiles -v

