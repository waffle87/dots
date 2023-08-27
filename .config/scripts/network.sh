#!/bin/sh
wget -q --spider http://google.com
if [ $? -eq 0 ]; then
  ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'
else
  echo "disconnected"
fi
