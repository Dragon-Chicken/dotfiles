#!/bin/sh
chosen=$(ls /home/ethan/Pictures/wallpapers | rofi -normal-window -dmenu -i -window-title "Wallpaper:")
if [ -z "$chosen" ]; then
  echo "chosen is empty"
  exit
fi
cp "/home/ethan/Pictures/wallpapers/$chosen" "/home/ethan/Pictures/wallpaper"
feh --bg-fill /home/ethan/Pictures/wallpaper
