# Inherit device configuration
$(call inherit-product, device/sony/nicki/full_nicki.mk)

# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nicki
PRODUCT_NAME := cm_nicki