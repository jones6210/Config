#!/bin/bash

brightness=$(xbacklight -get) 
brightness=$( printf "%.0f" $brightness )

echo -e $brightness
