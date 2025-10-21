install:
	cd ~/dotfiles/
	stow dunst
	stow fastfetch
	stow nvim
	stow picom
	stow polybar
	stow scripts
	stow st
	stow sxwm
	stow xinitrc
	stow zsh

uninstall:
	cd ~/dotfiles/
	stow -D dunst
	stow -D fastfetch
	stow -D nvim
	stow -D picom
	stow -D polybar
	stow -D scripts
	stow -D st
	stow -D sxwm
	stow -D xinitrc
	stow -D zsh
