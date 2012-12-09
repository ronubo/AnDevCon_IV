PRODUCT_PACKAGES := $(THIRD_PARTY_APPS)
# PRODUCT_PACKAGES += sensors.$(TARGET_PRODUCT)
# PRODUCT_PACKAGES += io_switch

# PRODUCT_COPY_FILES := \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
   $(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab \

#    $(SRC_TARGET_DIR)/board/generic_x86/GenericTouch.idc:system/usr/idc/Vendor_20b3_Product_0a18.idc \ \
 #    $(SRC_TARGET_DIR)/board/generic_x86/GenericTouch.idc:system/usr/idc/Vendor_03eb_Product_201c.idc # \ 
 

$(call inherit-product,$(SRC_TARGET_DIR)/product/generic_x86.mk)

PRODUCT_NAME := ron2
PRODUCT_DEVICE := andevcon
PRODUCT_MANUFACTURER := nubo

# DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlays
