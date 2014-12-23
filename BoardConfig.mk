# inherit from the proprietary version
-include vendor/lge/su640/BoardConfigVendor.mk

-include device/lge/su640/BoardConfigCommon.mk

$(shell mkdir -p $(OUT)/obj/SHARED_LIBRARIES/libril_intermediates)
$(shell touch $(OUT)/obj/SHARED_LIBRARIES/libril_intermediates/export_includes)
TARGET_BOOTLOADER_BOARD_NAME := su640
TARGET_OTA_ASSERT_DEVICE := su640
