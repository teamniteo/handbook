chapters := README.md $(wildcard ?_*/*.md) 

all: dist

.PHONY: help
help:
	@echo "Usage: make [target]\n"
	@echo "Targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "  %-25s %s\n", $$1, $$2}'

.PHONY: clean
clean:
	@rm -rf dist/

#
# The linkcheck target check all links in the repository.
#
.PHONY: linkcheck
linkcheck: ## Check all URLs in the handbook.
	@docker run -ti --rm -v $(shell pwd):/mnt:ro dkhamsing/awesome_bot --allow-dupe --allow-redirect --allow 403 --white-list https://github.com/niteoweb/operations,\
https://github.com/niteoweb/minisites,\
https://github.com/niteoweb/ebn,\
https://github.com/niteoweb/woocart,\
https://github.com/niteoweb/support,\
https://github.com/niteoweb/finances,\
https://github.com/niteoweb/sprint,\
https://github.com/niteoweb/my-niteo-career,\
http://docs.niteo.co,\
http://books.niteo.co,\
http://videos.niteo.co,\
https://github.com/issues/assigned,\
https://github.com/orgs/niteoweb/teams,\
https://github.com/niteoweb/easyblognetworks,\
https://apps.rackspace.com/%0D%0A \
--skip-save-results `find . -iname "*.md"`

dist: dist/niteo-handbook.epub
	@mkdir -p dist/
	@echo "> Download [epub version of this book](./niteo-handbook.epub)\n" \
		> dist/header.md

	@cat dist/header.md $(chapters) \
		| pandoc \
			--from gfm \
			--output dist/index.html \
		  --metadata title="Niteo Handbook"
	
dist/niteo-handbook.epub: $(chapters)
	@mkdir -p dist/
	@cat $(chapters) \
		| pandoc \
			--from gfm \
			--output dist/niteo-handbook.epub \
		  --metadata title="Niteo Handbook"
	
