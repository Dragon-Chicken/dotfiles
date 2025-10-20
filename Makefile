install:
	cd ~/dotfiles/
	stow nvim
	stow eww
	stow sxwm
	stow zsh

uninstall:
	cd ~/dotfiles/
	stow -D nvim
	stow -D eww
	stow -D sxwm
	stow -D zsh
