FISTBOOT_SERVICE := $(shell base64 -w0 < aux/custom-first-boot.service)

help:
	@cat Makefiles

.PHONY: prep
prep: src/constants.ts

.PHONY: validate
validate: prep
	git diff --exit-code

.PHONY: install
install:
	npm install

.PHONY: start
start: prep
	npm start

