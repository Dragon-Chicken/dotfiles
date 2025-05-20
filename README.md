# Dependencies
1. [qtile](https://qtile.org/)

   some widgets require dependencies, here they are
   1. [Volume widget](https://docs.qtile.org/en/stable/manual/ref/widgets.html#volume)
   2. [StatusNotifier widget](https://docs.qtile.org/en/stable/manual/ref/widgets.html#statusnotifier)
2. [rofi](https://github.com/davatorium/rofi)
3. [xorg/X](https://www.x.org/wiki/)
4. [lf](https://github.com/gokcehan/lf)
5. [nsxiv](https://codeberg.org/nsxiv/nsxiv)
6. [ly](https://github.com/fairyglade/ly)
7. [nitrogen](https://github.com/l3ib/nitrogen)
8. [picom](https://github.com/yshui/picom)
9. [git](https://git-scm.com/)
10. [firefox](https://www.mozilla.org/en-US/firefox/)

# Additional info
I have installed this on Arch Linux so I don't know if it will work on other distros

All packages can be installed with pacman

If dotfiles already exist please replace them

Colour palette used: https://github.com/morhetz/gruvbox#dark-mode-1

# Installation
After you have installed all of the Dependencies you can install the dotfiles

Download the dotfiles using `git`

`git clone https://github.com/Dragon-Chicken/dotfiles`

make directories if they don't already exist

`mkdir /home/{user}/.config/alacritty`

`mkdir /home/{user}/.config/lf`

`mkdir /home/{user}/.config/qtile`

`mkdir /home/{user}/.config/rofi`

`mkdir /home/{user}/.config/rofi/powermenu`

`mkdir /home/{user}/.config/nitrogen`

cd into the location where you cloned the dotfiles

rename `xinitrc` to `.xinitrc`

`cp xinitrc .xinitrc`

copy paste dotfiles

`cp .xinitrc /home/{user}`

`cp alacritty.yml /home/{user}/.config/alacritty`

`cp lfrc /home/{user}/.config/lf`

`cp config.py /home/{user}/.config/qtile`

`cp config.rasi /home/{user}/.config/rofi`

`cp powermenu /home/{user}/.config/rofi/powermenu`

`cp wallpaper /home/{user}/.config/nitrogen`

`cp userChrome.css /home/{user}/.mozilla/{firefox profiles directory}`

to find the firefox profiles directory open firefox and type `about:profiles` into the search box

it should look something like this `/home/{user}/.mozilla/firefox/msr13i0i.default/chrome`
