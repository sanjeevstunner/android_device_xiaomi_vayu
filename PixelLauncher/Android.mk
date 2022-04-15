LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := PixelLauncher
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := NexusLauncherRelease.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_OVERRIDES_PACKAGES := \
Lawnchair \
Nexuslauncher \
Launcher3QuickStep \
TrebuchetQuickStep \
Home \
Launcher2 \
Launcher3 \
NexusLauncherPrebuilt \
NexusLauncherRelease \
ParanoidQuickStep \
Launcher3Go \
Launcher3QuickStepGo

LOCAL_DEX_PREOPT := false
LOCAL_PRODUCT_MODULE := true
include $(BUILD_PREBUILT)
