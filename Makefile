PHONY: help
# Display all commands
help: # Show this help.
	@awk '/^#/{c=substr($$0,3);next}c&&/^[[:alpha:]][[:alnum:]_-]+:/{print substr($$1,1,index($$1,":")),c}1{c=0}' $(MAKEFILE_LIST) | column -s: -t

.PHONY: setup
# setup hugo env
setup:
	hugo mod tidy
	hugo mod npm pack
	npm install

.PHONY: start-dev
# start local development
start-dev:
	hugo server -w
