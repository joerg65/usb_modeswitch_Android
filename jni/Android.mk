LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libUsb
LOCAL_SRC_FILES := $(LOCAL_PATH)/../../libusb/android/libs/$(TARGET_ARCH_ABI)/libusb-1.0.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_CFLAGS += -pie -fPIE
LOCAL_LDFLAGS += -pie -fPIE
LOCAL_LDLIBS    := -llog 

LOCAL_MODULE    := usb_modeswitch
LOCAL_SRC_FILES := usb_modeswitch.c
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../libusb/libusb
LOCAL_SHARED_LIBRARIES := libUsb

include $(BUILD_EXECUTABLE)
