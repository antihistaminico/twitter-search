
install: git-install vscode-install vscodeinsiders-install

git-install:
	install -m 0644 .gitconfig $(HOME)/.gitconfig

vscode-install:
	install -m 0644 vscode/settings.json "$(HOME)/Library/Application Support/Code/User/settings.json"

vscodeinsiders-install:
	install -m 0644 vscodeinsiders/settings.json "$(HOME)/Library/Application Support/Code - Insiders/User/settings.json"
