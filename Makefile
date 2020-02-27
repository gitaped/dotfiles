.PHONY: ls
ls:
	lsrc -d ~/dotfiles -d ~/wotfiles

.PHONY: up
up:
ifeq ($(shell uname),Darwin)
	rcup -d ~/dotfiles -d ~/wotfiles -v
else
	rcup -d ~/dotfiles -d ~/wotfiles -t linux -v
endif

.PHONY: down
down:
	rcdn -d ~/dotfiles -d ~/wotfiles -v

