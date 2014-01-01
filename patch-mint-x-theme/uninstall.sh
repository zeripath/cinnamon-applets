#!/bin/bash
export KEY="/org/cinnamon/desktop/wm/preferences/theme"
dconf write "$KEY" "'Mint-X'"
rm -r ~/.themes/Mint-X-Max
