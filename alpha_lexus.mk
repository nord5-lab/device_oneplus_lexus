#
# SPDX-FileCopyrightText: 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lexus device
$(call inherit-product, device/oneplus/lexus/device.mk)

# Inherit some common AlphaDroid stuff.
$(call inherit-product, vendor/alpha/config/common_full_phone.mk)

# Device config
TARGET_HAS_UDFPS := true
TARGET_SUPPORTS_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_PREBUILT_BCR := true

# Build config

# TARGET_BUILD_PACKAGE options:
# 1 - vanilla (default)
# 2 - microg
# 3 - gapps
TARGET_BUILD_PACKAGE := 3

# Launcher
TARGET_INCLUDE_LAWNCHAIR := false

# (valid only for GAPPS builds)
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_GOOGLE_RECORDER := false

# Debugging
TARGET_INCLUDE_MATLOG := true
WITH_ADB_INSECURE := true

# Extras
TARGET_INCLUDE_SIMPLE_TUNE := true

# Maintainer
ALPHA_BUILD_TYPE := Official
ALPHA_MAINTAINER := stahed
WITH_GMS := true
WITH_PIXEL_OVERLAYS := true

PRODUCT_NAME := alpha_lexus
PRODUCT_DEVICE := lexus
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2707

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi_64-user 16 BP2A.250605.015 1779868665197 release-keys" \
    BuildFingerprint=OnePlus/CPH2707IN/OP6131L1:16/UKQ1.231108.001/V.R4T2.202605221928:user/release-keys \
    DeviceName=OP6131L1 \
    DeviceProduct=CPH2707 \
    SystemDevice=OP5E93L1 \
    SystemName=CPH2707
