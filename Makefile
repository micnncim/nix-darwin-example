OUT := result

NIX_NAME ?= "darwinConfigurations.$(shell hostname).system"

.PHONY: build
build:
	@nix build ".#$(NIX_NAME)"

.PHONY: switch
switch: $(OUT)/sw/bin/darwin-rebuild
	@$(OUT)/sw/bin/darwin-rebuild switch --flake "."
