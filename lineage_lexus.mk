#
# SPDX-FileCopyrightText: 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lexus device
$(call inherit-product, device/oneplus/lexus/device.mk)

# Inherit some common MistOS stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device config
TARGET_HAS_UDFPS := true
TARGET_SUPPORTS_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_PREBUILT_BCR := true

# Lawnchair (Pixel Launcher by default)
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Live wallpapers
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Quick tap
TARGET_SUPPORTS_QUICK_TAP  := true

# Now Playing
TARGET_SUPPORTS_NOW_PLAYING := false

# Bypass charging
BYPASS_CHARGE_SUPPORTED := true

# GMS
WITH_GMS := true
TARGET_USES_PICO_GAPPS := false
TARGET_USES_MINI_GAPPS := false

# Mist OS Flags
MIST_BUILD_TYPE := OFFICIAL
MISTOS_MAINTAINER := stahed

PRODUCT_NAME := lineage_lexus
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
