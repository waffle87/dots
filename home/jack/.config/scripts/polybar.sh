#!/bin/sh

killall -q polybar
polybar kepler 2>&1 | tee -a /tmp/polybar.log & disown
