#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)


# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from X6812 device
$(call inherit-product, device/infinix/X670/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := X670
PRODUCT_NAME := twrp_X670
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix Note 12
PRODUCT_MANUFACTURER := infinix

