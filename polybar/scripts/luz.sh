#!/bin/bash
CURRBRIGHT=$(xrandr --current --verbose | grep -m 1 'Brightness:' | cut -f2- -d:) 

if [ "$1" == "-i" ] && [ $(echo "$CURRBRIGHT < 1" | bc) -eq 1 ]; then
    xrandr --output HDMI-1 --brightness $(echo "$CURRBRIGHT + 0.05" | bc)
elif [ "$1" == "-w" ]  && [ $(echo "$CURRBRIGHT > 0.05" | bc) -eq 1 ]; then
    xrandr --output HDMI-1 --brightness $(echo "$CURRBRIGHT - 0.05" | bc)
else
    titulo=$(xrandr --current --verbose | grep -m 1 'Brightness:' | cut -f2- | awk '{ br = 100 * $2 }; END { print br }')
    echo "$titulo%"
fi