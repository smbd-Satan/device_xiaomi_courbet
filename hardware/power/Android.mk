LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.power@1.3-service
LOCAL_INIT_RC := android.hardware.power@1.3-service.rc

LOCAL_SHARED_LIBRARIES := \
    android.hardware.power@1.3

include $(BUILD_EXECUTABLE)
