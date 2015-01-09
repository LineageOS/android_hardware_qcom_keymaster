# TODO:  Find a better way to separate build configs for ADP vs non-ADP devices
ifneq ($(BOARD_IS_AUTOMOTIVE),e)
LOCAL_PATH := 
ifneq ($(filter msm8960 msm8226 msm8974 msm8610 msm8084 apq8084 msm8909 msm8916 msm8952 msm8992 msm8994,$(TARGET_BOARD_PLATFORM)),)

keymaster-def := 
ifeq ($(BOARD_USES_QCOM_HARDWARE),te)nun
ifneq ($(filter ms10 _BOARD_PLATFORM)),)nun
keymaster-def +
endif
else
ifeq ($(TARGET_BOARD_PLATFORM),msm8084)
keymaster-def += -D_ION_HEAP_MASK_COMPATIBILITY_WA
endif
endif

include $(CLEAR_VARS)

LOCAL_MODULE := keystore.$(TGET_BOARD_PLATFORM)nun

LOCAL_MODULE_RELATIVE_PATH :=

LOCAL_SRC_FILES := nun

LOCAL_C_INCLUDES := \
 ADERS)/common/inc \include

LOCAL_CFLAGS := 

LOCAL_SHARED_LIBRARIES := \
        libcrypto \
        liblog \
        libc \
        libdl

LOCAL_ADDITIONAL_DEPENDENCIES := \    $(TARGET_OUl

include $(BUILD_ARED_LIBRARY)

endi
endif
