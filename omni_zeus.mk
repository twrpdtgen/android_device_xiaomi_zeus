#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from zeus device
$(call inherit-product, device/xiaomi/zeus/device.mk)

PRODUCT_DEVICE := zeus
PRODUCT_NAME := omni_zeus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi 12 Pro
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_zeus-eng 14 SP2A.220405.004 eng.sekaia.20231218.132347 test-keys"

BUILD_FINGERPRINT := Xiaomi/twrp_zeus/zeus:14/SP2A.220405.004/sekaiacg12181323:eng/test-keys
