#!/bin/sh

xset -b

xinput set-prop 14 "libinput Accel Profile Enabled" 0 1 0
xsetroot -cursor_name left_ptr
xset r rate 250 40
unclutter --jitter 10 --ignore-scrolling --start-hidden --fork
xrdb -merge ~/.Xresources

# for audio...
#dbus-launch --sh-syntax --exit-with-session; pipewire &
pkill dbus-launch
dbus-launch --auto-syntax --exit-with-x11 &
gentoo-pipewire-launcher &

#exec nwm > /home/ethan/temp/nwm.temp
exec sxwm
