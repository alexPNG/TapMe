ARCHS = armv7 arm64 arm64e

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = TapMe

TapMe_FILES = FCCRootListController.m
TapMe_INSTALL_PATH = /Library/PreferenceBundles
TapMe_PRIVATE_FRAMEWORKS = Preferences
TapMe_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/TapMe.plist$(ECHO_END)
