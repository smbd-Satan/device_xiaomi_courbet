#
# Copyright (C) 2021 The blazeOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from courbet device
$(call inherit-product, device/xiaomi/courbet/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
IS_PHONE := true

## Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := courbet
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := lineage_courbet
PRODUCT_MODEL := M2101K9AG

# Gapps Architecture
$(call inherit-product, vendor/gapps/gms_pico.mk)
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_GAPPS_ARCH := arm64
WITH_GMS := true

# Matrixx
MATRIXX_BUILD_TYPE := Unofficial
MATRIXX_MAINTAINER := smbd_Satan
MATRIXX_CHIPSET := SM7150-ac
MATRIXX_BATTERY := 4250mah
MATRIXX_DISPLAY := 1080x2400

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="courbet_global-user 13 TKQ1.221013.002 V14.0.3.0.TKQMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/courbet_global/courbet:13/TKQ1.221013.002/V14.0.3.0.TKQMIXM:user/release-keys
