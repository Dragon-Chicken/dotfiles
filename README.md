# Dragon Chicken's dotfiles
Rose pine rice featuring Kagari Mimi \
I will probably rice more programs but this is what I have so far 😓
![screenshot1](images/screenshot1.png)
![screenshot2](images/screenshot2.png)
![screenshot3](images/screenshot3.png)

# Packages
- WM: [sxwm](https://github.com/uint23/sxwm)
- Bar: [polybar](https://github.com/polybar/polybar)
- Compositor: [picom](https://github.com/yshui/picom)
- Launcher: [rofi](https://github.com/davatorium/rofi)
- Terminal: [st](https://github.com/gh0stzk/st-terminal) (modified version of st)
- Shell: [zsh](https://wiki.archlinux.org/title/Zsh)
- CD replacement: [zoxide](https://github.com/ajeetdsouza/zoxide)
- Editor: [nvim](https://neovim.io/)
- Fetch: [fastfetch](https://github.com/fastfetch-cli/fastfetch)
- Notifications: [dunst](https://github.com/dunst-project/dunst)
- Screenshot: [scrot](https://github.com/resurrecting-open-source-projects/scrot)
- Dotfile manager: [stow](https://www.gnu.org/software/stow/manual/stow.html)

# Install
1. Download the packages for your distro
2. Clone this repo
```sh
git clone https://github.com/Dragon-Chicken/dotfiles.git
```
3. cd and install
```sh
cd dotfiles
make # or `make install`
```
4. You have to manually patch sxwm with [my patch](config/sxwm/sxwm.patch). \
A YouTube tutorial on how to patch dwm (also works on sxwm): \
https://youtu.be/qIEUBvGvvRg \
(I can't be bothered to make a full ass script)
```
# Uninstall
To uninstall, simply run:
```sh
make uninstall
```
