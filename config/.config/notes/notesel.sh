#!/bin/bash

chosen=$(echo \
  "<<sync notes>>
$(ls ~/notes)" | rofi -show -dmenu -i -window-title "notes: ")

if [[ -z "$chosen" ]]; then
  exit
elif [[ $chosen = "<<sync notes>>" ]]; then
  # make log file and dir
  mkdir -p ~/temp/

  # header for this log entry
  echo "-----------------
"$(date +"%Y%m%d-%H-%M-%S") >> ~/temp/note-logs

  st -o - ~/.config/notes/syncing.sh | tee -a ~/temp/note-logs
else
  st $SHELL -c "cd ~/notes; nvim ~/notes/$chosen"
fi
