.PHONY: ls
ls:
	lsrc -d ~/dotfiles

.PHONY: up
up:
ifeq ($(shell uname),Darwin)
	rcup -d ~/dotfiles -v
else
	rcup -d ~/dotfiles -t linux -v
endif

.PHONY: down
down:
	rcdn -d ~/dotfiles -v

