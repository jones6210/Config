#!/bin/bash

HDMI_STATUS=$(</sys/class/drm/card0/card0-HDMI-A-3/status )
MONITOR_POS=$(</tmp/monitor_pos )
eDP1_image=~/config/image/eDP1_image

if [ "connected" == "$HDMI_STATUS" ]; then
		sh ~/config/scripts/move_monitor.sh --$MONITOR_POS	
else
    xrandr --output HDMI3 --off
    feh --bg-scale $eDP1_image
fi
