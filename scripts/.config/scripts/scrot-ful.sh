#!/bin/sh
scrot --format jpg -o - | xclip -selection clipboard -target image/png
