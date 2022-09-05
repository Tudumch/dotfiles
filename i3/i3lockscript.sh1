#!/bin/bash
# скрипт вызывается из файла ~/.xsession для блокировки экрана

overlay=~/linux_configs/arch/configs/i3/overlay.png
rm /tmp/currentworkspace.png /tmp/currentworkspaceblur.png
scrot /tmp/currentworkspace.png
convert /tmp/currentworkspace.png -blur 0x5 /tmp/currentworkspaceblur.png
composite -gravity southeast $overlay /tmp/currentworkspaceblur.png /tmp/lockbackground.png
# setxkbmap -layout 'ru,us' -option 'grp:ctrl_shift_toggle'
i3lock -i /tmp/lockbackground.png
