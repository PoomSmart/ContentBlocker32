TARGET = iphone:latest:9.0
ARCHS = armv7
DEBUG = 0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ContentBlocker32
ContentBlocker32_FILES = Tweak.xm
ContentBlocker32_LIBRARIES = MobileGestalt

include $(THEOS_MAKE_PATH)/tweak.mk