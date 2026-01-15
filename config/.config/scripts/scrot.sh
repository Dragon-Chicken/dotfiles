#!/bin/sh
if [[ $1 -eq 0 ]] then
  scrot -s --format jpg -o - | xclip -selection clipboard -target image/png
elif [[ $1 -eq 1 ]] then
  scrot --format jpg -o - | xclip -selection clipboard -target image/png
fi
