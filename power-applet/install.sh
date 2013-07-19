#!/bin/bash
export KEY="/org/cinnamon/enabled-applets"
VALUE="$(dconf read $KEY | sed -e 's+power@cinnamon.org+power@zeripath.sdf-eu.org+')"
DIR="$HOME/.local/share/cinnamon/applets/power@zeripath.sdf-eu.org"
mkdir -p "$DIR"
cp applet.js metadata.json $DIR
dconf write "$KEY" "$VALUE"

