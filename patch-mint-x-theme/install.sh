#!/bin/bash
cp -r /usr/share/themes/Mint-X Mint-X-Max
cd Mint-X-Max
patch -p1 < ../theme.patch
mkdir -p ~/.themes/
cd ..
mv Mint-X-Max ~/.themes/
export KEY="/org/gnome/desktop/wm/preferences/theme"
dconf write "$KEY" "'Mint-X-Max'"
