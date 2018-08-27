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
	@docker run -ti --rm -v $(shell pwd):/mnt:ro dkhamsing/awesome_bot --allow-dupe --allow-redirect --allow 403 --white-list https://intra.niteo.co,https://github.com/niteoweb/operations,\
https://github.com/niteoweb/minisites,\
https://github.com/niteoweb/ebn,\
https://github.com/niteoweb/woocart,\
https://github.com/niteoweb/support,\
http://docs.niteo.co,\
http://books.niteo.co,\
http://videos.niteo.co,\
https://github.com/issues/assigned,\
https://github.com/orgs/niteoweb/teams,\
https://apps.rackspace.com/%0D%0A \
--skip-save-results `find . -name "*.md"`
