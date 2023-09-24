![screenshot](https://github.com/Dragon-Chicken/dotfiles/assets/70321204/3b338029-689f-4a3f-ab7f-73b5d4b981da)
# Dependencies
1. [qtile](https://qtile.org/)

   some widgets require dependencies, here they are
   1. [Volime widget](https://docs.qtile.org/en/stable/manual/ref/widgets.html#volume)
   2. [StatusNotifier widger](https://docs.qtile.org/en/stable/manual/ref/widgets.html#statusnotifier)
2. [rofi](https://github.com/davatorium/rofi)
3. [xorg/X](https://www.x.org/wiki/)
4. [lf](https://github.com/gokcehan/lf)
5. [vim](https://www.vim.org/)
6. [nsxiv](https://codeberg.org/nsxiv/nsxiv)
7. [ly](https://github.com/fairyglade/ly)
8. [nitrogen](https://github.com/l3ib/nitrogen)
9. [picom](https://github.com/yshui/picom)
10. [git](https://git-scm.com/)

# Additional info
I have installed this on Arch Linux so I don't know if it will work on other distros

All packages can be installed with pacman

If dotfiles already exist please replace them

Colour palette used: https://github.com/morhetz/gruvbox#dark-mode-1

# Installation
After you have installed all of the Dependencies you can install the dotfiles

Download the dotfiles

`git clone https://github.com/Dragon-Chicken/dotfiles`

make directories if they don't already exist

`mkdir /home/{user}/.config/alacritty/`

`mkdir /home/{user}/.config/lf`

`mkdir /home/{user}/.config/qtile`

`mkdir /home/{user}/.config/rofi`

copy and paste/replace dotfiles

cd into the location where you cloned the dotfiles

rename `xinitrc` to `.xinitrc`

`cp xinitrc .xinitrc`

`cp .xinitrc /home/{user}/`

`cp alacritty.yml /home/{user}/.config/alacritty/`

`cp lfrc /home/{user}/.config/lf/`

`cp config.py /home/{user}/.config/qtile/`

`cp config.rasi /home/{user}/.config/rofi`
