install:
	cd ~/dotfiles/
	stow config

uninstall:
	cd ~/dotfiles/
	stow -D config
