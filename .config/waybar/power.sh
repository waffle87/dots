#!/bin/sh
swaynag --background 282a36 --border 6272a4 --border-bottom 8be9fd --button-background 44475a --text 44475a --button-text 8be9fd -m 'Please choose' -b 'Suspend' 'systemctl suspend' -b 'Poweroff' 'poweroff' -b 'Reboot' 'reboot'
