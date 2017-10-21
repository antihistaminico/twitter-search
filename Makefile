
install: git-install

git-install:
	install -m 0644 .gitconfig $(HOME)/.gitconfig
