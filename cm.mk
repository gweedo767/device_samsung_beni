## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := tass

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/beni/device_beni.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := beni
PRODUCT_NAME := cm_beni
PRODUCT_BRAND := samsung
PRODUCT_MODEL := beni
PRODUCT_MANUFACTURER := samsung
