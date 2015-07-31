# Set composkey to Capslock
setxkbmap -option compose:caps

# This lets you toggle between different keyboard layouts
setxkbmap -option grp:ctrl_shift_toggle us,de

# Turn off screensaver
xset -dpms # Disables power safing mode
xset s noblank # This should turn off screen blanking
xset s off     # This turns off the screen saver
 
# Automount (udiskie)
udiskie --tray &

# Start notifications
dunst &

# Start redshift (a colorfilter) with my coordinates
redshift-gtk -l 48.398261:15.693650 &

# Start the NetworkManager applet
nm-applet &

# Load Xresources (terminal configuration)
xrdb -merge "${HOME}/.Xresources"

# Start compton (shadows and stuff)
compton --config ~/.compton.conf -b

# Set background image
feh --bg-scale ${HOME}/.bg.png

# Start rxvt-unicode deamon (lower resource usage and quicker startup for terminals)
urxvtd --quiet --opendisplay --fork

# Start the i3 window manager
exec i3
