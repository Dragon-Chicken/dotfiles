install:
	cd ~/.dotfiles/
	stow nvim
	stow eww
	stow sxwm

uninstall:
	cd ~/.dotfiles/
	stow -D nvim
	stow -D eww
	stow -D sxwm
