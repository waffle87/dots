#!/bin/bash
iwgetid -r >&- 2> /dev/null

if [ $? -eq 0 ]
then
  iwgetid -r
else
  echo "null" >&2
fi
