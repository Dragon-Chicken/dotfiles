#!/bin/sh

locdir="/home/ethan"
extdir="~/storage/shared/Documents"

# pc to tab
rsync -rPavhu "$locdir/notes" "mytab:$extdir"

# tab to pc
rsync -rPavhu "mytab:$extdir/notes" "$locdir"
