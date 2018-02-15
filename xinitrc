feh --bg-scale ~/Images/sunset_winter_railway_2880x1800.jpg ~/Images/desktopimages.jpg &
xrandr --output eDP1 --mode 2880x1800_60.00 --pos 3264x36 --output HDMI3 --auto --scale 1.7x1.7 --pos 0x0 --fb 6144x1836
xrandr --dpi 200
autocutsel -fork &
autcutsel -delection PRIMARY -fork &
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
exec i3
