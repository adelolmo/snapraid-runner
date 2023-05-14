#MAKEFLAGS += --silent

BUILD_DIR = build-debian
RELEASE_DIR := $(realpath $(CURDIR)/..)
TMP_DIR = $(BUILD_DIR)/tmp

VERSION := $(shell cat VERSION)

package: clean prepare cp control
	@echo Building package $(VERSION) $(ARCH)...
	fakeroot dpkg-deb -b -z9 $(TMP_DIR) $(RELEASE_DIR)

clean:
	rm -rf $(BUILD_DIR)

prepare:
	mkdir -p $(TMP_DIR)

cp:
	cp -R deb/* $(TMP_DIR)
	#cp $(TAR_CACHE) $(TMP_DIR)/$(APP_HOME)
	#rm -rf $(TMP_DIR)/$(APP_HOME)/$(TAR_FILE)

control:
	$(eval SIZE=$(shell du -sbk $(TMP_DIR)/ | grep -o '[0-9]*'))
	sed -i "s/{{version}}/$(VERSION)/;s/{{size}}/$(SIZE)/" $(TMP_DIR)/DEBIAN/control
