#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from b4q device
$(call inherit-product, device/samsung/b4q/device.mk)

PRODUCT_DEVICE := b4q
PRODUCT_NAME := twrp_b4q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-F721B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="b4qxxx-user 12 SP2A.220305.013 F721BXXS4EWL5 release-keys"

BUILD_FINGERPRINT := samsung/b4qxxx/b4q:12/SP2A.220305.013/F721BXXS4EWL5:user/release-keys
