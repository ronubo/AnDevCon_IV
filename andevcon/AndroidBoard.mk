LOCAL_PATH := $(call my-dir)
TARGET_INITRD_SCRIPTS := $(LOCAL_PATH)/../common/nubo_hw_detect
TARGET_KERNEL_CONFIG := $(LOCAL_PATH)/nubo_generic_defconfig

include $(GENERIC_X86_ANDROID_MK)
