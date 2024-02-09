#!/bin/sh
# this needs to be ran as proper root (> su)

# remove immutable flag
chattr -i /sys/firmware/efi/efivars/SystemAudioVolume-7c436110-ab2a-4bbb-a880-fe41995c9f82

# macos terminal uses BELL code (0x07) to audibly play system messages/warnings (such as the startup chime 
# that simply confirms POST was successful and lets everyone else in the room know as well) so set it to null
printf "\x07\x00\x00\x00\x00" > /sys/firmware/efi/efivars/SystemAudioVolume-7c436110-ab2a-4bbb-a880-fe41995c9f82

# replace immutable flag
chattr +i /sys/firmware/efi/efivars/SystemAudioVolume-7c436110-ab2a-4bbb-a880-fe41995c9f82
