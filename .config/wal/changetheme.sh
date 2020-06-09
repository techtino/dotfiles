#!/bin/bash

# Set variables
locations=("wallpapers:top:10:week" "wallpapers:hot:10" "wallpapers:top:10:year" "wallpaper:top:10:month" "wallpaper:top:10:week" "wallpaper:top:10:month" "wallpaper:top:10:year" "wallpaper:hot:10" "wallpaper:hot:10") 
index=$(shuf -i 1-${#locations[@]} -n 1)
echo $index
# Grab wallpaper and set colourschemes
~/.config/wal/reddit-wallpaper --clear --min-resolution 1920x1080 ${locations[index-1]}
wpg -s ~/.config/wal/pix
~/.config/wal/pywal-discord/pywal-discord
pywalfox update
spicetify update
BulbAndPCLighting
