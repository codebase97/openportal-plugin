ZIP_NAME ?= openportal.zip
PLUGIN_DIR ?= ../filestash-git/filestash/dist/data/state/plugins/
all:
	make clean
	make zip
	make plugin

zip:
	@echo "Zipping files into $(ZIP_NAME)"
	zip $(ZIP_NAME) manifest.json openportal.css *.patch

clean:
	@echo "Removing $(ZIP_NAME)"
	rm -f $(ZIP_NAME)
	rm -f $(PLUGIN_DIR)$(ZIP_NAME)

plugin:
	@echo "copying to $(PLUGIN_DIR)"
	cp $(ZIP_NAME) $(PLUGIN_DIR)
