install:
	cd ~/dotfiles/
	stow -t ~/ config

uninstall:
	cd ~/dotfiles/
	stow -t ~/ -D config
