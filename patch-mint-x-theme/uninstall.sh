#!/bin/bash
export KEY="/org/gnome/desktop/wm/preferences/theme"
dconf write "$KEY" "'Mint-X'"
rm -r ~/.themes/Mint-X-Max
