.PHONY: install
install: git-install

.PHONY: git-install
$(HOME)/.gitconfig: git-install
git-install:
	install -m 0644 .gitconfig $(HOME)/.gitconfig
