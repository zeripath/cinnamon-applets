#!/bin/bash
command -v dconf >/dev/null 2>&1 || { echo >&2 "I require dconf, part of dconf-tools, but this doesn't exist. Please install dconf-tools: sudo apt-get install dconf-tools"; exit 1; }
export KEY="/org/cinnamon/enabled-applets"
VALUE="$(dconf read $KEY | sed -e 's+power@cinnamon.org+power@zeripath.sdf-eu.org+')"
DIR="$HOME/.local/share/cinnamon/applets/power@zeripath.sdf-eu.org"
mkdir -p "$DIR"
cp applet.js metadata.json $DIR
dconf write "$KEY" "$VALUE"

