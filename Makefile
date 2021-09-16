DOTFILES=$(HOME)/dotfiles
WOTFILES=$(HOME)/wotfiles

.PHONY: ls
ls:
	lsrc -d $(DOTFILES) -d $(WOTFILES)

.PHONY: up
up:
ifeq ($(shell uname),Darwin)
	rcup -d $(DOTFILES) -d $(WOTFILES) -v
else
	rcup -d $(DOTFILES) -d $(WOTFILES) -t linux -v
endif

.PHONY: sym
sym:
ifeq ($(shell uname),Darwin)
	rcup -K -d $(DOTFILES) -d $(WOTFILES) -v
else
	rcup -K -d $(DOTFILES) -d $(WOTFILES) -t linux -v
endif

.PHONY: down
down:
	rcdn -d $(DOTFILES) -d $(WOTFILES) -v

