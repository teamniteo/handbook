.PHONY: help
help:
	@echo "Usage: make [target]\n"
	@echo "Targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "  %-25s %s\n", $$1, $$2}'

#
# The linkcheck target check all links in the repository.
# 
.PHONY: linkcheck 
linkcheck: ## Check all URLs in the handbook.
	@docker run -ti --rm -v $(shell pwd):/mnt:ro dkhamsing/awesome_bot --allow-dupe --allow-redirect --skip-save-results `find . -name "*.md"`
