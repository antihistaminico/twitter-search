.PHONY: install
install:
	@make gitconfig-install

.PHONY: update
update:
	@make gitconfig-update

.PHONY: uninstall
uninstall:
	@make gitconfig-uninstall

.PHONY: git-install gitconfig-uninstall gitconfig-update
$(HOME)/.gitconfig: git-install
gitconfig-install:
	install -m 0644 .gitconfig $(HOME)/.gitconfig
gitconfig-uninstall:
	yes | rm gitconfig $(HOME)/.gitconfig || true
gitconfig-update: gitconfig-delete gitconfig-install
