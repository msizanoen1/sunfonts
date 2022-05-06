INSTALL_PATH ?= /opt/sunfonts

DIRS = 100dpi 75dpi encodings F3bitmaps misc TrueType Type1 dtinfo

install:
	rm -rf $(INSTALL_PATH)
	mkdir -p $(INSTALL_PATH)/fontpath.d
	cp -r $(DIRS) $(INSTALL_PATH)/
	ln -s $(INSTALL_PATH)/F3bitmaps $(INSTALL_PATH)/fontpath.d/F3bitmaps:unscaled:pri=0
	ln -s $(INSTALL_PATH)/misc $(INSTALL_PATH)/fontpath.d/misc:unscaled:pri=1
	ln -s $(INSTALL_PATH)/75dpi $(INSTALL_PATH)/fontpath.d/75dpi:unscaled:pri=2
	ln -s $(INSTALL_PATH)/100dpi $(INSTALL_PATH)/fontpath.d/100dpi:unscaled:pri=3
	ln -s $(INSTALL_PATH)/TrueType/ $(INSTALL_PATH)/fontpath.d/TrueType:pri=4
	ln -s $(INSTALL_PATH)/Type1/ $(INSTALL_PATH)/fontpath.d/Type1:pri=5
	ln -s $(INSTALL_PATH)/Type1/sun/ $(INSTALL_PATH)/fontpath.d/Type1-sun:pri=6
	ln -s $(INSTALL_PATH)/F3bitmaps $(INSTALL_PATH)/fontpath.d/F3bitmaps:scaled:pri=7
	ln -s $(INSTALL_PATH)/misc $(INSTALL_PATH)/fontpath.d/misc:scaled:pri=8
	ln -s $(INSTALL_PATH)/75dpi $(INSTALL_PATH)/fontpath.d/75dpi:scaled:pri=9
	ln -s $(INSTALL_PATH)/100dpi $(INSTALL_PATH)/fontpath.d/100dpi:scaled:pri=10
	ln -s $(INSTALL_PATH)/dtinfo $(INSTALL_PATH)/fontpath.d/dtinfo:pri=11

uninstall:
	rm -rf $(INSTALL_PATH)
