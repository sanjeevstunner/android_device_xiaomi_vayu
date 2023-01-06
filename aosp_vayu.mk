#
# Copyright (C) 2018-2021 ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/vayu/device.mk)

# Inherit common configurations from Pixel Experience 
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit configurations for Pixel Additionals (from TheParasiteProject)
$(call inherit-product-if-exists, vendor/pixel-additional/config.mk)
TARGET_FLATTEN_APEX := true
TARGET_INCLUDE_CARRIER_SETTINGS := true

# Inherit configurations for Mi Parts
$(call inherit-product-if-exists, packages/apps/Parts/config.mk)

# Feature Flags
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_NAME := aosp_vayu
PRODUCT_DEVICE := vayu
PRODUCT_BRAND := POCO
PRODUCT_MODEL := Poco X3 Pro
PRODUCT_MANUFACTURER := Xiaomi
CUSTOM_DEVICE := vayu

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=vayu_global \
    PRODUCT_MODEL=M2102J20SI
