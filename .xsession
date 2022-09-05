xautolock -time 10 -locker ~/linux_configs/arch/configs/i3/i3lockscript.sh &
numlockx &
blueman-applet &
pasystray & # sound-applet for pulseaudio
setxkbmap -layout us,ru
setxkbmap -option 'grp:ctrl_shift_toggle'
/usr/bin/prime-offload # script for Optimus-Manager
/usr/bin/prime-switch # script for Optimus-Manager
i3
pull # alias for updating different config-files
