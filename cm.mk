## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := xperia

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/sony/xperia/device_xperia.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := xperia
PRODUCT_NAME := cm_xperia
PRODUCT_BRAND := sony
PRODUCT_MODEL := xperia
PRODUCT_MANUFACTURER := sony
