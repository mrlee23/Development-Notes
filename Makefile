.PHONY: install publish
EMACSBIN ?= emacs
BATCH     = $(EMACSBIN) -Q --batch

publish:
	@$(BATCH) -l ./scripts/publish.el
