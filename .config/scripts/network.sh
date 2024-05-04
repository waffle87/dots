#!/usr/local/bin/zsh

ping -W 1 -c 3 8.8.8.8 &> /dev/null

if [[ "$?" == "0" ]]; then
  ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'
else
  printf "disconnected"
fi
