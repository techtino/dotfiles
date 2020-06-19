#!/bin/bash

rm ~/.config/wal/*.png

wallpapernum=$RANDOM

wget --no-check-certificate -O ~/.config/wal/wall$wallpapernum.png https://source.unsplash.com/1920x1080/
wpg -s ~/.config/wal/wall$wallpapernum.png
feh --bg-scale ~/.config/wal/wall$wallpapernum.png
~/.config/wal/pywal-discord/pywal-discord
pywalfox update
spicetify update
BulbAndPCLighting
