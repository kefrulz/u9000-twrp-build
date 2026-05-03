$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

PRODUCT_DEVICE := U9000
PRODUCT_NAME := omni_U9000
PRODUCT_BRAND := alps
PRODUCT_MODEL := PDA
PRODUCT_MANUFACTURER := alps

PRODUCT_RELEASE_NAME := U9000

$(call inherit-product, device/alps/U9000/device.mk)
