LOCAL_PATH := device/alps/U9000

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/kernel:kernel

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.device=U9000 \
    ro.product.model=PDA \
    ro.product.brand=alps \
    ro.product.manufacturer=alps \
    ro.board.platform=mt6737m
