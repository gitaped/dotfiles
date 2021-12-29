OPTS:=-v -d $(HOME)/dotfiles

ifneq ($(wildcard $(HOME)/wotfiles),)
	OPTS+=-d $(HOME)/wotfiles
endif

.PHONY: ls
ls:
	@lsrc $(OPTS)

.PHONY: up
up:
	@rcup -f $(OPTS)

.PHONY: sym
sym:
	@rcup -f -K $(OPTS)

.PHONY: down
down:
	@rcdn $(OPTS)

