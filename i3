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
bindsym $mod+space exec "rofi -show drun"

# start chromium
bindsym $mod+b exec chromium --force-device-scale-factor=2

# start spotify
bindsym $mod+m exec spotify  --force-device-scale-factor=2

#############################################################################################
#					Application mode
#############################################################################################

for_window [class="Wicd"] floating enable
					
bindsym $mod+a mode "Application"

mode "Application"{
	# matlab
	bindsym m exec "termite --exec=matlab"; mode "default"

	# octave
	bindsym o exec octave; mode "default"
	
	# texstudio
	bindsym t exec texstudio; mode "default"

	# htop
	bindsym h exec "termite --exec=htop"; mode "default"

	# ranger
	bindsym r exec "termite --exec=ranger"; mode "default"

	# atom
	bindsym a exec atom; mode "default"

	# libreoffice
	bindsym l exec libreoffice; mode "default"

	# wicd
	bindsym i exec wicd-gtk; mode "default"

	# firefox
	bindsym f exec firefox; mode "default"

	# tor
	bindsym n exec tor-browser; mode "default"

	# clion
	bindsym c exec clion; mode "default"

	# spotify
	bindsym s exec "spotify --force-scale-factor=2"; mode "default"

	# chromium
	bindsym b exec "chromium --force-scale-factor=2"; mode "default"

	# pavucontrol
	bindsym p exec pavucontrol; mode "default"	

	# exit mode	
	bindsym Escape mode "default"
}

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
bindsym $mod+h split h

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
gaps inner  4
gaps outer  2


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
#					Resize
#############################################################################################
# resize windows
bindsym $mod+r mode "Resize"

# resize mode
mode "Resize" {
        
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        bindsym Escape mode "default"

        bindsym space mode "Resize 5 px"

}



mode "Resize 5 px" {
	bindsym Left resize shrink width 5 px or 5 ppt
	bindsym Down resize grow height 5 px or 5 ppt
	bindsym Up resize shrink height 5 px or 5 ppt
	bindsym Right resize grow width 5 px or 5 ppt

 	bindsym Escape mode "default"

	bindsym space mode "Resize 2 px"
	bindsym BackSpace mode "Resize"
}

mode "Resize 2 px" {
	bindsym Left resize shrink width 2 px or 2 ppt
	bindsym Down resize grow height 2 px or 2 ppt
	bindsym Up resize shrink height 2 px or 2 ppt
	bindsym Right resize grow width 2 px or 2 ppt

	bindsym Escape mode "default"

	bindsym space mode "Resize 1 px"
	bindsym BackSpace mode "Resize 5 px"
}

mode "Resize 1 px" {
	bindsym Left resize shrink width 1 px or 1 ppt
	bindsym Down resize grow height 1 px or 1 ppt
	bindsym Up resize shrink height 1 px or 1 ppt
	bindsym Right resize grow width 1 px or 1 ppt

	bindsym Escape mode "default"

	bindsym space mode "Resize 1 px"
	bindsym BackSpace mode "Resize 2 px"
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
#					 Workspaces
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
workspace 7 output eDP1
workspace 8 output eDP1
workspace 9 output HDMI3
workspace 10 output HDMI3

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

#############################################################################################
#				Workspace mode
#############################################################################################

bindsym $mod+w mode "Workspace"

mode "Workspace"{

bindsym 0x3c workspace number 0; mode default
bindsym 1 workspace 1; mode default
bindsym 2 workspace 2; mode default
bindsym 3 workspace 3; mode default
bindsym 4 workspace 4; mode default
bindsym 5 workspace 5; mode default
bindsym 6 workspace 6; mode default
bindsym 7 workspace 7; mode default
bindsym 8 workspace 8; mode default
bindsym 9 workspace 9; mode default
bindsym 0 workspace 10; mode default

bindsym a workspace 11:A; mode default
bindsym b workspace 12:B; mode default
bindsym c workspace 13:C; mode default
bindsym d workspace 14:D; mode default
bindsym e workspace 15:E; mode default
bindsym f workspace 16:F; mode default
bindsym g workspace 17:G; mode default
bindsym h workspace 18:H; mode default
bindsym i workspace 19:I; mode default
bindsym j workspace 20:J; mode default
bindsym k workspace 21:K; mode default
bindsym l workspace 22:L; mode default
bindsym m workspace 23:M; mode default
bindsym n workspace 24:N; mode default
bindsym o workspace 25:O; mode default
bindsym p workspace 26:P; mode default
bindsym q workspace 27:Q; mode default
bindsym r workspace 28:R; mode default
bindsym s workspace 29:S; mode default
bindsym t workspace 30:T; mode default
bindsym u workspace 31:U; mode default
bindsym v workspace 32:V; mode default
bindsym w workspace 33:W; mode default
bindsym x workspace 34:X; mode default
bindsym y workspace 35:Y; mode default
bindsym z workspace 36:Z; mode default

bindsym Return exec "i3-input -F 'Workspace %s' -P 'Workspace: '"; mode default

bindsym Escape mode "default"

bindsym space mode "Move"
}

mode "Move"{

bindsym 0x3c move container to workspace number 0; mode default
bindsym 1 move container to workspace 1;mode default
bindsym 2 move container to workspace 2;mode default
bindsym 3 move container to workspace 3;mode default
bindsym 4 move container to workspace 4;mode default
bindsym 5 move container to workspace 5;mode default
bindsym 6 move container to workspace 6;mode default
bindsym 7 move container to workspace 7;mode default
bindsym 8 move container to workspace 8;mode default
bindsym 9 move container to workspace 9;mode default
bindsym 0 move container to worksapce 10;mode default

bindsym a move container to workspace 11:A;mode default
bindsym b move container to workspace 12:B;mode default
bindsym c move container to workspace 13:C;mode default
bindsym d move container to workspace 14:D;mode default
bindsym e move container to workspace 15:E;mode default
bindsym f move container to workspace 16:F;mode default
bindsym g move container to workspace 17:G;mode default
bindsym h move container to workspace 18:H;mode default
bindsym i move container to workspace 19:I;mode default
bindsym j move container to workspace 20:J;mode default
bindsym k move container to workspace 21:K;mode default
bindsym l move container to workspace 22:L;mode default
bindsym m move container to workspace 23:M;mode default
bindsym n move container to workspace 24:N;mode default
bindsym o move container to workspace 25:O;mode default
bindsym p move container to workspace 26:P;mode default
bindsym q move container to workspace 27:Q;mode default
bindsym r move container to workspace 28:R;mode default
bindsym s move container to workspace 29:S;mode default
bindsym t move container to workspace 30:T;mode default
bindsym u move container to workspace 31:U;mode default
bindsym v move container to workspace 32:V;mode default
bindsym w move container to workspace 33:W;mode default
bindsym x move container to workspace 34:x;mode default
bindsym y move container to workspace 35:Y;mode default
bindsym z move container to workspace 36:Z;mode default

bindsym Return  exec "i3-input -F 'move container to workspace %s' -P 'Move to workspace '"; mode default

bindsym space mode "Move and follow"

bindsym Escape mode "default"
}

mode "Move and follow" {
bindsym 0x3c move container to workspace 0:; workspace 0:; mode default
bindsym 1 move container to workspace 1; workspace 1; mode default
bindsym 2 move container to workspace 2; workspace 2; mode default
bindsym 3 move container to workspace 3; workspace 3; mode default
bindsym 4 move container to workspace 4; workspace 4; mode default
bindsym 5 move container to workspace 5; workspace 5; mode default
bindsym 6 move container to workspace 6; workspace 6; mode default
bindsym 7 move container to workspace 7; workspace 7; mode default
bindsym 8 move container to workspace 8; workspace 8; mode default
bindsym 9 move container to workspace 9; workspace 9; mode default
bindsym 0 move container to workspace 10; workspace 10; mode default

bindsym a move container to workspace 11:A; workspace 11:A; mode default
bindsym b move container to workspace 12:B; workspace 12:B; mode default
bindsym c move container to workspace 13:C; workspace 13:C; mode default
bindsym d move container to workspace 14:D; workspace 14:D; mode default
bindsym e move container to workspace 15:E; workspace 15:E; mode default
bindsym f move container to workspace 16:F; workspace 16:F; mode default
bindsym g move container to workspace 17:G; workspace 17:G; mode default
bindsym h move container to workspace 18:H; workspace 18:H; mode default
bindsym i move container to workspace 19:I; workspace 19:I; mode default
bindsym j move container to workspace 20:J; workspace 20:J; mode default
bindsym k move container to workspace 21:K; workspace 21:K; mode default
bindsym l move container to workspace 22:L; workspace 22:L; mode default
bindsym m move container to workspace 23:M; workspace 23:M; mode default
bindsym n move container to workspace 24:N; workspace 24:N; mode default
bindsym o move container to workspace 25:O; workspace 25:O; mode default
bindsym p move container to workspace 26:P; workspace 26:P; mode default
bindsym q move container to workspace 27:Q; workspace 27:Q; mode default
bindsym r move container to workspace 28:R; workspace 28:R; mode default
bindsym s move container to workspace 29:S; workspace 29:S; mode default
bindsym t move container to workspace 30:T; workspace 30:T; mode default
bindsym u move container to workspace 31:U; workspace 31:U; mode default
bindsym v move container to workspace 32:V; workspace 32:V; mode default
bindsym w move container to workspace 33:W; workspace 33:W; mode default
bindsym x move container to workspace 34:X; workspace 34:X; mode default
bindsym y move container to workspace 35:Y; workspace 35:Y; mode default
bindsym z move container to workspace 36:Z; workspace 36:Z; mode default

bindsym Return exec "i3-input -F 'move container to workspace %s; workspace %s' -P 'Destination workspace name: '"; mode default

bindsym space mode "Move"

bindsym Escape mode "default"
}
