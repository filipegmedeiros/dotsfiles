#!/bin/bash

CONSTATE=$(nmcli -fields WIFI g);

if [[ "$CONSTATE" =~ "enabled" ]]; then
	titulo=$( iwgetid -r)
elif [[ "$CONSTATE" =~ "disabled" ]]; then
	titulo="Sem Internet"
fi

echo "$titulo"