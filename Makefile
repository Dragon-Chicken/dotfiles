install:
	cd ~/dotfiles/
	stow eww
	stow nvim
	stow picom
	stow polybar
	stow scripts
	stow sxwm
	stow zsh

uninstall:
	cd ~/dotfiles/
	stow -D eww
	stow -D nvim
	stow -D picom
	stow -D polybar
	stow -D scripts
	stow -D sxwm
	stow -D zsh
