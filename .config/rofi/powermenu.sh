#!/usr/bin/env bash

# rofi-power
# Use rofi to call systemctl for shutdown, reboot, etc

# 2016 Oliver Kraitschy - http://okraits.de

OPTIONS="Hibernate\nSleep\nShutdown\nReboot"

# source configuration or use default values
if [ -f $HOME/.config/rofi-power/config ]; then
  source $HOME/.config/rofi-power/config
else
  LAUNCHER="rofi -width 10 -lines 5 -dmenu -p Power"
  USE_LOCKER="false"
  LOCKER="i3lock"
fi

# Show exit wm option if exit command is provided as an argument
if [ ${#1} -gt 0 ]; then
  OPTIONS="Exit window manager\n$OPTIONS"
fi

option=`echo -e $OPTIONS | $LAUNCHER | awk '{print $1}' | tr -d '\r\n'`
if [ ${#option} -gt 0 ]
then
    case $option in
      Exit)
        eval $1
        ;;
      Hibernate)
        systemctl hibernate
        ;;
      Sleep)
        systemctl suspend
        ;;
      Shutdown)
        systemctl poweroff
        ;;
      Reboot)
        systemctl reboot
        ;;
      *)
        ;;
    esac
fi
