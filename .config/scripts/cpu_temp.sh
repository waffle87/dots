#!/usr/local/bin/zsh
sysctl dev.cpu.0.temperature | awk '{print $2}'
