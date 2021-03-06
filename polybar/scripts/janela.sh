#!/bin/bash

if [ "$1" == "-i" ]; then
    xdotool getactivewindow getwindowname 2>/dev/null | xclip -rmlastnl -selection c
elif [ "$1" == "-c" ]; then
	focused_window_id=$(xdotool getwindowfocus)
	active_window_id=$(xdotool getactivewindow)
	active_window_pid=$(xdotool getwindowpid "$active_window_id")
	kill -9 $active_window_pid
elif [ "$1" == "-w" ]; then
	~/.config/rofi/scripts/janelas.sh
else
    titulo=$(xdotool getactivewindow getwindowname 2>/dev/null || echo "Window")
    echo "$titulo"
fi
