#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from FP3 device
$(call inherit-product, device/fairphone/FP3/device.mk)

PRODUCT_DEVICE := FP3
PRODUCT_NAME := lineage_FP3
PRODUCT_BRAND := Fairphone
PRODUCT_MODEL := Fairphone OS
PRODUCT_MANUFACTURER := fairphone

PRODUCT_GMS_CLIENTID_BASE := android-uniscope

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fp3_gms-user 13 6.A.025.0 gms-9c64b0c5 release-keys"

BUILD_FINGERPRINT := Fairphone/FP3/FP3:13/6.A.025.0/gms-9c64b0c5:user/release-keys
