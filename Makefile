INSTALL_TARGET_PROCESSES = SpringBoard
ARCHS = armv7 arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TapMe
TapMe_FILES = Tweak.xm
TapMe_CFLAGS = -fobjc-arc

SUBPROJECTS += prefs

include $(THEOS_MAKE_PATH)/tweak.mk

include $(THEOS_MAKE_PATH)/aggregate.mk
