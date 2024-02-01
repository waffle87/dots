#!/bin/sh
FREE=$(bc <<< "scale=2; $(sed -n '/^MemAvailable:/ s/[^[:digit:]]//gp' /proc/meminfo) / 1024 / 1024 ")
USED=$(bc <<< "scale=2; $(sed -n '/^MemFree:/ s/[^[:digit:]]//gp' /proc/meminfo) / 1024 / 1024 ")
echo $USED/$FREE
