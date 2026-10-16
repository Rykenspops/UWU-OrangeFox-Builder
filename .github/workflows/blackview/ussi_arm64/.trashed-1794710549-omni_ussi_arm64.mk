#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ussi_arm64 device
$(call inherit-product, device/blackview/ussi_arm64/device.mk)

PRODUCT_DEVICE := ussi_arm64
PRODUCT_NAME := omni_ussi_arm64
PRODUCT_BRAND := UNISOC
PRODUCT_MODEL := ussi_arm64_full
PRODUCT_MANUFACTURER := blackview

PRODUCT_GMS_CLIENTID_BASE := android-blackview

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="SHARK_6_NEU-user 15 AP3A.240905.015.A2 60326 release-keys"

BUILD_FINGERPRINT := Blackview/SHARK_6_NEU/SHARK_6:15/AP3A.240905.015.A2/60326:user/release-keys
