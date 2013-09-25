LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),C1905)
    include $(call first-makefiles-under,$(LOCAL_PATH))
endif