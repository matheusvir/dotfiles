#!/bin/bash

sudo apt install python3-pip
pip3 install --upgrade gnome-extensions-cli

LIST="extensions_list.txt"
CONF="extensions_settings.dconf"
ENABLED="extensions_enabled.txt"

if [! -f "$LIST"]; then
    exit 1
fi 

while read -r uuid; do 
    gext install "$uuid"
done < "$LIST"

if [-f "$CONF"]; then
    dconf load /org/gnome/shell/extensions/ < "$CONF"
fi

if [-f "$ENABLED"]; then
    gsettings set org.gnome.shell enabled-extensions "(cat "$ENABLED")"
fi

echo "Process complete! Restart GNOME Shell (Alt+F2, 'r', Enter) or log out."
