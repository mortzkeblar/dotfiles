#!/bin/bash

dwmblocks &
picom --experimental-backends &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#setxkbmap latam &
#rfkill unblock all &
feh --bg-fill /home/mauronarea/Downloads/hi.png &
nm-applet &
udiskie -t &
volumeicon &
blueman-applet &
