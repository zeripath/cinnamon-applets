#!/bin/bash
command -v dconf >/dev/null 2>&1 || { echo >&2 "I require dconf, part of dconf-tools, but this doesn't exist. Please install dconf-tools: sudo apt-get install dconf-tools"; exit 1; }
cp -r /usr/share/themes/Mint-X Mint-X-Max
cd Mint-X-Max
patch -p1 < ../theme.patch
mkdir -p ~/.themes/
cd ..
mv Mint-X-Max ~/.themes/
export KEY="/org/cinnamon/desktop/wm/preferences/theme"
dconf write "$KEY" "'Mint-X-Max'"
