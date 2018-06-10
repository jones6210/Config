#!/bin/bash

eDP1_image=~/config/image/eDP1_image
HDMI3_image=~/config/image/HDMI3_image

xrandr --output HDMI3 --off --dpi 200

if [ "$1" == "--left" ]; then
		xrandr --output eDP1 --mode 2880x1800_60.00 --pos 3264x36 --output HDMI3 --auto --scale 1.7x1.7 --pos 0x0 --fb 6144x1836
		echo left > /tmp/monitor_pos

elif [ "$1" == "--right" ]; then
		 xrandr --output eDP1 --mode 2880x1800_60.00 --pos 0x0 --output HDMI3 --auto --scale 1.7x1.7 --pos 2880x0 --panning 3230x1836+2880+0 --fb 6144x1836
echo right > /tmp/monitor_pos

elif [ "$1" == "--up" ]; then
		xrandr --output eDP1 --mode 2800x1800_60.00 --pos 192x1836 --output HDMI3 --auto --scale 1.7x1.7 --pos 0x0 --fb 3264x3636
		echo above > /tmp/monitor_pos
fi

feh --bg-scale $eDP1_image $HDMI3_image
