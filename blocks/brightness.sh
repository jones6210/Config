#!/bin/bash

screen_brightness=$(light -G) 
screen_brightness=$( printf "%.0f" $screen_brightness )

keybright=$(light -kG)

#echo -e $screen_brightness

case $BLOCK_BUTTON in 

		1) echo -e $keybright ;;
		
esac
echo -e $screen_brightness
