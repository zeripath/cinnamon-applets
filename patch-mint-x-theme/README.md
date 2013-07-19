Patch Mint-X theme for Maximize
===============================

This script takes the local copy of the Mint-X theme and patches it to give maximized
windows no titlebar.

Installation
============

1. Install dconf-tools using: apt-get install dconf-tools
1. Extract the zip into a temporary directory
2. cd into that directory
3. chmod +x install.sh
4. ./install.sh
5. Press ALT-F2, type r, and press ENTER to restart cinnamon.

The install script will copy and the local version mint-x theme, patch it, install it in 
the local themes directory and set it as the window borders.

To revert to the normal theme:

1. cd into the temporary directory
2. chmod +x uninstall.sh 
3. ./uninstall.sh
4. Press ALT-F2, type r, and press ENTER to restart cinnamon.
