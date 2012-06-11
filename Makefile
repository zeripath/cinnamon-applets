all:	window-list

window-list:	
	zip -r window-list-applet.zip window-list-applet/ -x window-list-applet/.git

clean:
	rm *.zip
