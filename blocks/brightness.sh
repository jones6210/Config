#!/bin/bash

screen_brightness=$(xbacklight -get) 
screen_brightness=$( printf "%.0f" $screen_brightness )

keybright=$(kbdlight get)

#echo -e $screen_brightness

case $BLOCK_BUTTON in 

		1) echo -e $keybright ;;
		
esac
echo -e $screen_brightness
