#!/bin/bash
headphone=alsa_output.usb-Schiit_Audio_Schiit_Unison_Modius-00.analog-stereo
speaker=alsa_output.pci-0000_0c_00.4.analog-stereo
if [[ $(pactl get-default-sink) = $headphone ]]; then
  pactl set-default-sink $(pactl list sinks short | rg $speaker | cut -f 1)
else
  pactl set-default-sink $(pactl list sinks short | rg $headphone | cut -f 1)
fi
