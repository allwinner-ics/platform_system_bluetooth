ifeq ($(BOARD_HAVE_BLUETOOTH_BCM),true)

LOCAL_PATH:= $(call my-dir)

#
# brcm_patchram_plus.c
#

include $(CLEAR_VARS)

ifeq ($(SW_BOARD_HAVE_BLUETOOTH_NAME), hwmw269v2)
LOCAL_SRC_FILES := brcm_patchram_plus_huawei.c
else
LOCAL_SRC_FILES := brcm_patchram_plus.c
endif

LOCAL_MODULE := brcm_patchram_plus

LOCAL_SHARED_LIBRARIES := libcutils liblog

LOCAL_C_FLAGS := \
	-DANDROID

include $(BUILD_EXECUTABLE)

endif
