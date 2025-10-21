# Dependencies
- eww
- nvim
- picom
- polybar (going to be replaced by eww)
- sxwm
- zsh
- [st](https://github.com/gh0stzk/st-terminal) (modified version of st)
- zoxide
- scrot
- stow

# Installation
1. Download the dependencies
2. Go your home directory \
You __need__ to clone the repo into your home directory for it to work
```sh
cd ~/
```
3. Clone this repo
```sh
git clone https://github.com/Dragon-Chicken/dotfiles.git
```
4. Install
```sh
make # or `make install`
```
5. I use custom names for workspaces. So, to get the same names edit `~/sxwm/src/defs.h` (or whereever your sxwm source files are at) and replace lines 35 to 44 with this:\
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
