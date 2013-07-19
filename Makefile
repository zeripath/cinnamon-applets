all:	window-list power patch-theme

window-list:	
	zip -r window-list-applet.zip window-list-applet/ -x window-list-applet/.git

power:
	zip -r power-applet.zip power-applet/ -x power-applet/.git

patch-theme:
	zip -r patch-mint-x-theme.zip patch-mint-x-theme/ -x patch-mint-x-theme/.git

clean:
	rm *.zip
