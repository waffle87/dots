#!/bin/bash
#default=$(pactl get-default-sink)
if [[ $(pactl get-default-sink) = "alsa_output.usb-Schiit_Audio_Schiit_Modi_3_-00.analog-stereo" ]]; then
  pactl set-default-sink 45
else
  pactl set-default-sink 43
fi
