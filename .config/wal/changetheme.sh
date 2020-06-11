#!/bin/bash

# Set variables
locations=("wallpapers:top:1:week" "wallpapers:hot:1" "wallpapers:top:1:year" "wallpaper:top:1:month" "wallpaper:top:1:week" "wallpaper:top:1:month" "wallpaper:top:1:year" "wallpaper:hot:1" "wallpaper:hot:1") 
index=$(shuf -i 1-${#locations[@]} -n 1)
echo $index
# Grab wallpaper and set colourschemes
~/.config/wal/reddit-wallpaper --clear --min-resolution 1920x1080 ${locations[index-1]}
wpg -s ~/.config/wal/pix
~/.config/wal/pywal-discord/pywal-discord
pywalfox update
spicetify update
BulbAndPCLighting
