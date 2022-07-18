#!/bin/sh
swaynag --background 002b36 --border 586e75 --border-bottom 6c71c4 --button-background 073642 --text 839496 --button-text 2aa198 -m 'Please choose' -b 'Suspend' 'systemctl suspend' -b 'Poweroff' 'poweroff' -b 'Reboot' 'reboot'
