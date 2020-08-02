#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from onclite device
$(call inherit-product, device/xiaomi/onclite/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/legion/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := legion_onclite
PRODUCT_DEVICE := onclite
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi 7
PRODUCT_MANUFACTURER := xiaomi

TARGET_BOOT_ANIMATION_RES += 720
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="onc-user 10 QKQ1.191008.001 V11.0.2.0.QFLCNXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := xiaomi/onc/onc:10/QKQ1.191008.001/V11.0.2.0.QFLCNXM:user/release-keys

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
