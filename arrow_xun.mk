#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit some common ArrowOS stuff.
$(call inherit-product, vendor/arrow/config/common.mk)
ARROW_GAPPS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
DEVICE_MAINTAINER := irawansalt

# Inherit from xun device.
$(call inherit-product, device/xiaomi/xun/device.mk)

## Device identifier
PRODUCT_DEVICE := xun
PRODUCT_NAME := arrow_xun
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := xun

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="xun_global-user 13 TKQ1.221114.001 V14.0.4.0.TMUMIXM release-keys"

BUILD_FINGERPRINT := Redmi/xun_global/xun:13/TKQ1.221114.001/V14.0.4.0.TMUMIXM:user/release-keys
