#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamoleb device
$(call inherit-product, device/oneplus/guacamoleb/device.mk)

# Inherit some common stuff.
ROM_VENDOR := lineage
ifdef ROM_VENDOR
$(call inherit-product, vendor/$(ROM_VENDOR)/config/common_full_phone.mk)
else
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
endif

# Device identifier. This must come after all inclusions.
ifdef ROM_VENDOR
PRODUCT_NAME := $(ROM_VENDOR)_$(DEVICE_CODENAME)
else
PRODUCT_NAME := lineage_guacamoleb
endif
PRODUCT_DEVICE := guacamoleb
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := GM1901
PRODUCT_BRAND := OnePlus

# UDFPS support
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true

# Blur
TARGET_ENABLE_BLUR := true

# Lawnchair (Pixel Launcher by default)
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

# Exclude Aperture camera app
PRODUCT_NO_CAMERA := true

# Custom package installer
TARGET_USE_CUSTOM_PACKAGE_INSTALLER := true

# Live wallpapers
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Quick tap
TARGET_SUPPORTS_QUICK_TAP  := true

# Now Playing
TARGET_SUPPORTS_NOW_PLAYING := true

# Clear Calling
TARGET_SUPPORTS_CLEAR_CALLING := true

# Call Recording Support
TARGET_SUPPORTS_CALL_RECORDING := true

# Bypass charging
BYPASS_CHARGE_SUPPORTED := true

# GMS
WITH_GMS := true

# Mist OS Flags
MIST_BUILD_TYPE := UNOFFICIAL
MISTOS_MAINTAINER := GamerBoy1234294

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus7-user 12 SKQ1.211113.001 P.202303230244 release-keys" \
    BuildFingerprint=OnePlus/OnePlus7/OnePlus7:12/SKQ1.211113.001/P.202303230244:user/release-keys \
    DeviceName=OnePlus7 \
    DeviceProduct=OnePlus7 \
    SystemDevice=OnePlus7 \
    SystemName=OnePlus7
