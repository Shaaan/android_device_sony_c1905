## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := C1905

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/sony/C1905/full_C1905.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := C1905
PRODUCT_NAME := cm_C1905
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia M
PRODUCT_MANUFACTURER := Sony
