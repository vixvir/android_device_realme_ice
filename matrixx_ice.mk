#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ice device
$(call inherit-product, device/realme/ice/device.mk)

# Inherit some common matrixx stuff.
$(call inherit-product, vendor/matrixx/config/common_full_phone.mk)

PRODUCT_NAME := matrixx_ice
PRODUCT_DEVICE := ice
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3461
PRODUCT_SYSTEM_NAME := RE54BFL1
PRODUCT_SYSTEM_DEVICE := RE54BFL1

# Enable Blur
TARGET_ENABLE_BLUR := true

# Disable OMX Service
TARGET_SUPPORTS_OMX_SERVICE := false

# Boot animation resolution, choose from 480, 720, 1080, 1440.
# Default is 1080
TARGET_BOOT_ANIMATION_RES := 1080

# Specify build type and maintaner
MATRIXX_BUILD_TYPE := UNOFFICIAL
MATRIXX_MAINTAINER := vixvir

# Flags specific to ice on matrixx
$(call soong_config_set,surfaceflinger,frame_rate_category_high,144)
$(call soong_config_set,surfaceflinger,frame_rate_category_min,60)
BYPASS_CHARGE_SUPPORTED := true
USE_REALITY_ENGINE := true

# Overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
	BuildDesc=$(call normalize-path-list, "RMX3461-user 13 TP1A.220905.001 R.1119f23-59b8-59b9 release-keys") \
	DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
	DeviceProduct=$(PRODUCT_SYSTEM_NAME) \
	BuildFingerprint=realme/RMX3461/RE54BFL1:13/TP1A.220905.001/R.1119f23-59b8-59b9:user/release-keys
    SystemDevice=RE54BFL1 \
    SystemName=RE54BFL1

