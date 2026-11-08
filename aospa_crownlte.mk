# SPDX-License-Identifier: Apache-2.0

ifeq (aospa_crownlte,$(TARGET_PRODUCT))

# Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit from crownlte device.mk
$(call inherit-product, device/samsung/crownlte/device.mk)

# Inherit PenguinOS (AOSPA) common config
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

# Device identifier, this must come after all inclusions
PRODUCT_NAME := aospa_crownlte
PRODUCT_DEVICE := crownlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N960F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

endif
