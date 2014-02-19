LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ifeq ($(call is-vendor-board-platform,QCOM),true)

LOCAL_MODULE := keystore.$(TARGET_BOARD_PLATFORM)

LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw

LOCAL_SRC_FILES := keymaster_qcom.cpp

LOCAL_C_INCLUDES :=  \
		$(TARGET_OUT_HEADERS)/common/inc \
		$(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include \
		$(LOCAL_PATH)/../../../system/security/keystore \
		$(LOCAL_PATH)/../../../external/openssl/include

LOCAL_C_FLAGS = -fvisibility=hidden -Wall -Werror

LOCAL_SHARED_LIBRARIES := libcrypto liblog \
		libc \
		libcutils \
		libutils \
		libdl

LOCAL_ADDITIONAL_DEPENDENCIES := \
		$(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr \
		$(LOCAL_PATH)/Android.mk

LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

endif # TARGET_BOARD_PLATFORM
