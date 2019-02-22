#!/bin/bash

intern=LVDS-1
extern=HDMI-1
tema_notebook="$HOME/.config/rofi/themes/notebook.rasi"
tema_monitor="$HOME/.config/rofi/themes/lateral.rasi"

if xrandr | grep "$extern disconnected"; then
    rofi -sidebar-mode -lines 0 -theme "$tema_notebook" -show window -bw 4 -eh 1 -opacity "80" -lines 8 -line-margin 4 -width 20 -padding 16
else
    rofi -sidebar-mode -lines 0 -theme "$tema_monitor" -show window -bw 4 -eh 1 -opacity "80" -lines 8 -line-margin 4 -width 20 -padding 16
fi