#!/bin/bash
wofi --height 10 --width 10 --dmenu --password "$(printf "$1" | sed s/://)"
