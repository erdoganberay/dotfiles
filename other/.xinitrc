#!/bin/sh
xrandr --output HDMI-0 --auto --left-of DP-0
slstatus &
wal -R &
picom --config ~/.dotfiles/picom/picom.conf &
exec dwm
