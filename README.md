# Dragon Chicken's dot files
Screenshots:
# Packages
- WM: [__sxwm__](https://github.com/uint23/sxwm)
- Bar: [__polybar__](https://github.com/polybar/polybar)
- Compositor: [__picom__](https://github.com/yshui/picom)
- Launcher: [__rofi__](https://github.com/davatorium/rofi)
- Terminal: [__st__](https://github.com/gh0stzk/st-terminal) (modified version of st)
- Shell: [__zsh__](https://wiki.archlinux.org/title/Zsh)
- CD replacement: [__zoxide__](https://github.com/ajeetdsouza/zoxide)
- Editor: [__nvim__](https://neovim.io/)
- Fetch: [__fastfetch__](https://github.com/fastfetch-cli/fastfetch)
- Notifications: [__dunst__](https://github.com/dunst-project/dunst)
- Screenshot: [__scrot__](https://en.wikipedia.org/wiki/Scrot)
- Dotfile manager: [__stow__](https://www.gnu.org/software/stow/manual/stow.html)

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
4. I use custom names for workspaces. So, to get the same names edit `~/sxwm/src/defs.h` (or whereever your sxwm source files are at) and replace lines 35 to 44 with this:\
(workspaces 6 to 9 still exist but there are no keybinds to access them)
```c
#define WORKSPACE_NAMES	\
	"dev""\0"\
	"web""\0"\
	"mus""\0"\
	"ex1""\0"\
	"ex2""\0"\
	"6""\0"\
	"7""\0"\
	"8""\0"\
	"9""\0"
```
# Uninstall
To uninstall, simply run:
```sh
make uninstall
```
