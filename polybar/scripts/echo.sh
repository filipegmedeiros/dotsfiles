#!/bin/bash

CONSTATE=$(nmcli -fields WIFI g);

if [[ "$CONSTATE" =~ "enabled" ]]; then
	echo $( iwgetid -r)
elif [[ "$CONSTATE" =~ "disabled" ]]; then
	echo "Sem Internet"
fi
