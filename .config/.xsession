xautolock -time 10 -locker ~/.config/i3lock/i3lockscript.sh & # lock screen script
blueman-applet &
nm-applet & # network manager wifi-applet
pasystray & # pulseaudio sound-applet 
redshift & # automatic night-mode enabling for the monitor
setxkbmap -layout us,ru -variant -option 'grp:ctrl_shift_toggle' # language toggle
pull # alias for updating different config-files
