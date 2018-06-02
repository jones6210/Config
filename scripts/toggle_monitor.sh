#!/bin/bash

HDMI_STATUS=$(</sys/class/drm/card0/card0-HDMI-A-3/status )
MONITOR_POS=$(</tmp/monitor_pos )

if [ "connected" == "$HDMI_STATUS" ]; then
		sh ~/config/scripts/move_monitor.sh --$MONITOR_POS	
else
    xrandr --output HDMI3 --off
    feh --bg-scale ~/Images/sunset_winter_railway_2880x1800.jpg
fi
