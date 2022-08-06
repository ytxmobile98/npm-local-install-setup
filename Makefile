NPM_PACKAGES_DIR := $$HOME/.npm-packages

define LIST_NPM_CONFIG
  echo ""
  echo "[List NPM config]"
  npm config list
endef

.PHONY: help
all: help

.PHONY: help
help:
	@echo "Set or unset NPM packages directory for current user."
	@echo ""
	@echo "- Setup current user installation:"
	@echo "    make setup"
	@echo "- Undo setup:"
	@echo "    make clean"

.PHONY: setup
setup:
	@echo "Set current user's NPM packages directory to \"$(NPM_PACKAGES_DIR)\""
	npm config set prefix $(NPM_PACKAGES_DIR)

	@$(call LIST_NPM_CONFIG)

.PHONY: clean
clean:
	@echo "Unset current user's NPM packages directory (currently is \"$(NPM_PACKAGES_DIR)\")"
	npm config delete prefix

	@$(call LIST_NPM_CONFIG)
