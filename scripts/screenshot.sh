#!/bin/bash

FILE="$HOME/Screenshots/$(date '+%d-%m-%Y_%H:%M:%S').png"

if [ "$1" == "--whole" ]; then
		maim $FILE 

elif [ "$1" == "--selected" ]; then
		maim -s $FILE

fi

xclip -selection clipboard -t image/png -i $FILE
