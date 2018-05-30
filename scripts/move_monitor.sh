#!/bin/bash

if [ "$1" == "--left" ]; then
		xrandr --output HDMI3 --off
		xrandr --output eDP1 --mode 2880x1800_60.00 --pos 3264x36 --output HDMI3 --auto --scale 1.7x1.7 --pos 0x0 --fb 6144x1836 --dpi 200
     feh --bg-scale ~/Images/sunset_winter_railway_2880x1800.jpg

elif [ "$1" == "--right" ]; then

		xrandr --output HDMI3 --off
		 xrandr --output eDP1 --mode 2880x1800_60.00 --pos 0x0 --output HDMI3 --auto --scale 1.7x1.7 --pos 2880x0 --panning 3230x1836+2880+0 --fb 6144x1836 --dpi 200
    feh --bg-scale ~/Images/sunset_winter_railway_2880x1800.jpg ~/Images/desktopimages.jpg

elif [ "$1" == "--above" ]; then

		xrandr --output HDMI3 --off
fi
