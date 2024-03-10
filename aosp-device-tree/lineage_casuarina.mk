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

# Inherit from casuarina device
$(call inherit-product, device/vsmart/casuarina/device.mk)

PRODUCT_DEVICE := casuarina
PRODUCT_NAME := lineage_casuarina
PRODUCT_BRAND := vsmart
PRODUCT_MODEL := Joy 3
PRODUCT_MANUFACTURER := vsmart

PRODUCT_GMS_CLIENTID_BASE := android-vsmart

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="casuarina_open-userdebug 9 PKQ1.190601.001 V430A_OPEN_U_M2_20200213 test-keys"

BUILD_FINGERPRINT := vsmart/casuarina_open/casuarina:9/PKQ1.190601.001/V430A_OPEN_U_M2_20200213:userdebug/test-keys
