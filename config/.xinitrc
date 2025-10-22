#!/bin/sh

xset -b

xinput set-prop

xsetroot -cursor_name left_ptr

xset r rate 250 40

unclutter --jitter 10 --ignore-scrolling --start-hidden --fork

# does this work?
# should mount /dev/sda1 to /mnt/data
# sudo mount /dev/sda1 /mnt/data

exec sxwm
