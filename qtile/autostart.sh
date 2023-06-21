#!/bin/sh

xrandr --output HDMI-A-0 --mode 1920x1080 --pos 1920x57 --rate 75 --output HDMI-1-2 --mode 1920x1080 --pos 0x0 --rate 75 &
feh --bg-fill ~/Downloads/green.jpg &
picom &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
# systray battery icon
#cbatticon -u 5 &
# systray volume
#volumeicon &


