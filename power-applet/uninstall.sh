#!/bin/bash
export KEY="/org/cinnamon/enabled-applets"
VALUE="$(dconf read $KEY | sed -e 's+power@zeripath.sdf-eu.org+power@cinnamon.org+')"
DIR="$HOME/.local/share/cinnamon/applets/power@zeripath.sdf-eu.org"
rm -r $DIR
dconf write "$KEY" "$VALUE"

