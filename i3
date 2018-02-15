##############################################################################################
#					Startup
##############################################################################################
# i3 font
font pango:Roboto 8

# mod key
set $mod Mod4
set $mod1 Mod1

# floating modifer
floating_modifier $mod

# autostart compton
exec --no-startup-id compton -b

# autostart workspace 1 with terminal
exec --no-startup-id i3-msg 'workspace 1; exec /usr/bin/termite'

#############################################################################################
#					Application Key Bindings
#############################################################################################
# start a terminal
bindsym $mod+Return exec termite

# start rofi program launcher
bindsym $mod+space exec "rofi -show run"

# start chromium
bindsym $mod+b exec chromium --force-device-scale-factor=2

# start spotify
bindsym $mod+m exec spotify --force-device-scale-factor=2

# start texstudio
bindsym $mod+t exec texstudio

# start htop
bindsym $mod+h exec "termite --exec=htop"

# start ranger
bindsym $mod+w exec "termite --exec=ranger"

# start matlab
bindsym $mod+p exec "termite --exec=matlab"

# start atom
bindsym $mod+a exec atom

# start wicd
bindsym $mod+i exec wicd-gtk 
for_window [class="Wicd"] floating enable

# start octave
bindsym $mod+o exec "termite --exec=octave"

#############################################################################################
#					i3 Key Bindings
#############################################################################################

# kill focused window
bindsym $mod+q kill

# move focused window
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+shift+v split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+ctrl+space focus mode_toggle

# focus the parent container
bindsym $mod+Shift+a focus parent

# focus the child container
#bindsym $mod+Shift+d focus child

# removing titlebar on new window
new_window none

# removing titlebar on new float
new_float none

# i3 workspace window gaps
gaps inner  10
gaps outer  5


#############################################################################################
#					Media Keybindings
#############################################################################################
# keyboard backlight brightness down
bindsym XF86MonBrightnessDown exec "xbacklight -dec 10"

# keyboard backlight brightness up
bindsym XF86MonBrightnessUp exec "xbacklight -inc 10"

# screen brightness down
bindsym XF86KbdBrightnessDown exec "kbdlight down 2.5"

# screen brightness up
bindsym XF86KbdBrightnessUp exec "kbdlight up 2.5"

# toggle mute volume
bindsym XF86AudioMute exec "pamixer --toggle-mute"

# decrease volume
bindsym XF86AudioLowerVolume exec "pamixer --decrease 5"

# increase volume
bindsym XF86AudioRaiseVolume exec "pamixer --increase 5"

# media play/pause
bindsym XF86AudioPlay exec "playerctl play-pause"

# media next
bindsym XF86AudioNext exec "playerctl next"

# media previous
bindsym XF86AudioPrev exec "playerctl previous"

#############################################################################################
#					Modes
#############################################################################################
# resize windows
bindsym $mod+r mode "resize"

# resize mode
mode "Resize" {
        # These bindings trigger as soon as you enter the resize mode

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

#############################################################################################
#					i3 Bar
#############################################################################################
# i3 bar for laptop screen (eDP1)
bar {
	output eDP1
        status_command i3blocks -c ~/.config/i3blocks/config
	i3bar_command i3bar -t
	tray_output none
	position top
	height 50
	strip_workspace_numbers yes
	colors{
	background #28282899
        statusline #D3D3D3
        focused_workspace #458588d7 #458588d7 #000000
        active_workspace #28282899 #28282899 #3d3b38
        inactive_workspace #28282899 #28282899 #3d3b38
        urgent_workspace #28282899 #28282899 #458588d7

	}
}

# i3 bar for external monitor (HDMI3)
bar{
	output HDMI3
	status_command i3blocks -c  ~/.config/i3blocks/config_monitor
        i3bar_command i3bar -t
        tray_output none
        position top
	height 50
	strip_workspace_numbers yes
        colors{
        background #28282899
        statusline #D3D3D3
        focused_workspace #458588d7 #458588d7 #000000
        active_workspace #28282899 #28282899 #3d3b38
        inactive_workspace #28282899 #28282899 #3d3b38
        urgent_workspace #28282899 #28282899 #458588d75r
	}
}

#############################################################################################
#					System
#############################################################################################
# screenshot whole screen
bindsym ctrl+shift+3 exec "maim  ~/Screenshots/$(date '+%d-%m-%Y_%H:%M:%S').jpg"

# screenshot selected screen using mouse
bindsym ctrl+shift+4 exec "maim -s ~/Screenshots/$(date '+%d-%m-%Y_%H:%M:%S').jpg"

# i3lock
bindsym $mod+l exec "i3lock -e -u -c 000000"

# suspend system
bindsym $mod+s exec "systemctl suspend"

# toggle external monitor
bindsym $mod+Shift+t exec "sh ~/.config/scripts/monitorplugin.sh"

# reload the configuration file
bindsym $mod+Shift+c reload

# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart

# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

##############################################################################################
# Workspaces
##############################################################################################
# toggle previous workspaces with current
bindsym $mod+Tab workspace back_and_forth

# next workspace
bindsym $mod+Right workspace next

# previous workspace
bindsym $mod+Left workspace prev

# assigned workspaces
workspace 0 output eDP1
workspace 1 output eDP1
workspace 2 output eDP1
workspace 3 output eDP1
workspace 4 output eDP1
workspace 5 output eDP1
workspace 6 output eDP1
#workspace 7 output eDP1
#workspace 8 output eDP1
#workspace 9 output eDP1
#workspace 10 output eDP1
#workspace 11 output HDMI3
#workspace 12 output HDMI3
#workspace 13 output HDMI3
#workspace 14 output HDMI3
#workspace 15 output HDMI3
#workspace 16 output HDMI3
#workspace 17 output HDMI3
#workspace 18 output HDMI3
#workspace 19 output HDMI3
#workspace 20 output HDMI3

# switch to workspace
bindsym $mod+0x3c workspace number 0
bindsym $mod+1 workspace 1
bindsym $mod+2 workspace 2
bindsym $mod+3 workspace 3
bindsym $mod+4 workspace 4
bindsym $mod+5 workspace 5
bindsym $mod+6 workspace 6
bindsym $mod+7 workspace 7
bindsym $mod+8 workspace 8
bindsym $mod+9 workspace 9
bindsym $mod+0 workspace 10
bindsym $mod1+1 workspace 11
bindsym $mod1+2 workspace 12
bindsym $mod1+3 workspace 13
bindsym $mod1+4 workspace 14
bindsym $mod1+5 workspace 15
bindsym $mod1+6 workspace 16
bindsym $mod1+7 workspace 17
bindsym $mod1+8 workspace 18
bindsym $mod1+9 workspace 19
bindsym $mod1+0 workspace 20

# move focused container to workspace
bindsym $mod+Shift+0x3c move container to workspace number 0
bindsym $mod+Shift+1 move container to workspace 1
bindsym $mod+Shift+2 move container to workspace 2
bindsym $mod+Shift+3 move container to workspace 3
bindsym $mod+Shift+4 move container to workspace 4
bindsym $mod+Shift+5 move container to workspace 5
bindsym $mod+Shift+6 move container to workspace 6
bindsym $mod+Shift+7 move container to workspace 7
bindsym $mod+Shift+8 move container to workspace 8
bindsym $mod+Shift+9 move container to workspace 9
bindsym $mod+Shift+0 move container to workspace 10
bindsym $mod1+Shift+1 move container to workspace 11
bindsym $mod1+Shift+2 move container to workspace 12
bindsym $mod1+Shift+3 move container to workspace 13
bindsym $mod1+Shift+4 move container to workspace 14
bindsym $mod1+Shift+5 move container to workspace 15
bindsym $mod1+Shift+6 move container to workspace 16
bindsym $mod1+Shift+7 move container to workspace 17
bindsym $mod1+Shift+8 move container to workspace 18
bindsym $mod1+Shift+9 move container to workspace 19
bindsym $mod1+Shift+0 move container to workspace 20

# custom workspace named workspace using i3-input
bindsym $mod+n exec "i3-input -F 'Workspace %s' -P 'Workspace: '"

# move container to custom workspace using i3-input
bindsym $mod+Shift+n exec "i3-input -F 'move container to workspace %s' -P 'Move to workspace '"

#############################################################################################
#############################################################################################
