#!/bin/bash
command -v dconf >/dev/null 2>&1 || { echo >&2 "I require dconf, part of dconf-tools, but this doesn't exist. Please install dconf-tools: sudo apt-get install dconf-tools"; exit 1; }
export KEY="/org/cinnamon/desktop/wm/preferences/theme"
dconf write "$KEY" "'Mint-X'"
rm -r ~/.themes/Mint-X-Max
