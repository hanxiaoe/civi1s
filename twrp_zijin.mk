#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from zijin device
$(call inherit-product, device/xiaomi/zijin/device.mk)

PRODUCT_DEVICE := zijin
PRODUCT_NAME := twrp_zijin
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2109119BC
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="zijin-user 13 RKQ1.211001.001 V14.0.4.0.TLPCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/zijin/zijin:13/RKQ1.211001.001/V14.0.4.0.TLPCNXM:user/release-keys
