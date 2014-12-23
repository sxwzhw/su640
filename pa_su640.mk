$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/pa/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/pa/main.mk

# Inherit device configuration
$(call inherit-product, device/lge/su640/su640.mk)

PRODUCT_NAME := pa_su640
PRODUCT_RELEASE_NAME := OptimusLTE
PRODUCT_VERSION_DEVICE_SPECIFIC :=
PRODUCT_DEVICE := su640
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lge_iproj BUILD_FINGERPRINT=LGE/i_skt/i_skt:4.1.2/JZO54K/LG-SU640-V30c.1e63311706:user/release-keys PRIVATE_BUILD_DESC="ijb_skt_kr-user 4.1.2 JZO54K f9b82f2196 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Lightbulb
