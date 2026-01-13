SHELL := /bin/bash

.PHONY: lint lint-strict smoke ci

lint-strict: lint

lint:
	bash -c 'shopt -s globstar; shellcheck scripts/**/*.sh'

smoke:
	bash -n scripts/clean_node.sh
	bash scripts/clean_node.sh --dry-run

ci: lint smoke
