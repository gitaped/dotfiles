OPTS:=-v -d $(HOME)/dotfiles

ifneq ($(wildcard $(HOME)/wotfiles),)
	OPTS+=-d $(HOME)/wotfiles
endif

# List all the symlinks
.PHONY: ls
ls:
	@lsrc $(OPTS)

# Run pre-up hooks, symlink dotfiles, and run post-up hooks
.PHONY: up
up:
	@rcup -f $(OPTS)

# Symlink dotfiles only
.PHONY: sym
sym:
	@rcup -f -K $(OPTS)

# Run pre-down hooks, unsymlink dotfiles, and run post-down hooks
.PHONY: down
down:
	@rcdn $(OPTS)

# Unsymlink dotfiles only
.PHONY: unsym
unsym:
	@rcdn -x rcrc -K $(OPTS)

