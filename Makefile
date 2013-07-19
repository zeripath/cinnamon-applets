all:	window-list power

window-list:	
	zip -r window-list-applet.zip window-list-applet/ -x window-list-applet/.git

power:
	zip -r power-applet.zip power-applet/ -x power-applet/.git

clean:
	rm *.zip
