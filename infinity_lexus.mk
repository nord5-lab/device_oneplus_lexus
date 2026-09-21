#
# SPDX-FileCopyrightText: 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lexus device
$(call inherit-product, device/oneplus/lexus/device.mk)

# Inherit some common Infinity stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Maintainer Name
INFINITY_MAINTAINER := "stahed"

# Gapps
WITH_GAPPS := true

PRODUCT_NAME := infinity_lexus
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
