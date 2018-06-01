#!/bin/bash

xbacklight -set	0
kbdlight off

HDMI_STATUS=$(</sys/class/drm/card0/card0-HDMI-A-3/status )
MONITOR_POS=$(</tmp/monitor_pos.txt )

if [ "connected" == "$HDMI_STATUS" ]; then
    xrandr --output HDMI3 --off
fi

i3lock -u -e -n; 

if [ "right" == "$MONITOR_POS" ]; then
		 xrandr --output eDP1 --mode 2880x1800_60.00 --pos 0x0 --output HDMI3 --auto --scale 1.7x1.7 --pos 2880x0 --panning 3230x1836+2880+0 --fb 6144x1836
elif [ "left" == "$MONITOR_POS" ]; then
		xrandr --output eDP1 --mode 2880x1800_60.00 --pos 3264x36 --output HDMI3 --auto --scale 1.7x1.7 --pos 0x0 --fb 6144x1836
elif [ "above" == "$MONITOR_POS" ]; then
		 xrandr --output eDP1 --mode 2800x1800_60.00 --pos 192x1836 --output HDMI3 --auto --scale 1.7x1.7 --pos 0x0 --fb 3264x3636

fi
