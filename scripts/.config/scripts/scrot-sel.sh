#!/bin/sh
scrot -s --format jpg -o - | xclip -selection clipboard -target image/png
