OPTS:=-v -d $(HOME)/dotfiles

ifneq ($(wildcard $(HOME)/wotfiles),)
	OPTS+=-d $(HOME)/wotfiles
endif

.PHONY: help
help: # Show this help message
	@egrep '^(.+)\:\ #\ (.+)' ${MAKEFILE_LIST} | column -t -c 2 -s ':#'

.PHONY: ls
ls: # List all the symlinks
	@lsrc $(OPTS)

.PHONY: up
up: # Run pre-up hooks, symlink dotfiles, and run post-up hooks
	@rcup -f $(OPTS)

.PHONY: sym
sym: # Symlink dotfiles only
	@rcup -f -K $(OPTS)

.PHONY: down
down: # Run pre-down hooks, unsymlink dotfiles, and run post-down hooks
	@rcdn $(OPTS)

.PHONY: unsym
unsym: # Unsymlink dotfiles only
	@rcdn -x rcrc -K $(OPTS)

