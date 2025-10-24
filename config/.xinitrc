#!/bin/sh

xset -b

# why does this line break so often?
# xinput set-prop 16 "libinput Accel Profile Enabled" 0 1 0
# will this save it?
xinput set-prop 16 "libinput Accel Profile Enabled" 0 1 0

xsetroot -cursor_name left_ptr

xset r rate 250 40

unclutter --jitter 10 --ignore-scrolling --start-hidden --fork

# does this work?
# should mount /dev/sda1 to /mnt/data
# sudo mount /dev/sda1 /mnt/data

exec sxwm
