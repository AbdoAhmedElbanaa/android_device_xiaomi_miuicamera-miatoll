#
# Copyright (C) 2023-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/miuicamera-miatoll/miuicamera-miatoll-vendor.mk)

# Priv-app permission
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/privapp-permissions-mimoji.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-mimoji.xml \
    $(LOCAL_PATH)/configs/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuicamera.xml \
    $(LOCAL_PATH)/configs/privapp-permissions-miuiextraphoto.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuiextraphoto.xml \
    $(LOCAL_PATH)/configs/privapp-permissions-miuigallery.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuigallery.xml

# Gallery & GalleryEditor JNI libraries
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/xiaomi/miuicamera-miatoll/proprietary/system/priv-app/MIUIGallery/lib/arm64,$(TARGET_COPY_OUT_SYSTEM)/priv-app/MIUIGallery/lib/arm64) \
    $(call find-copy-subdir-files,*,vendor/xiaomi/miuicamera-miatoll/proprietary/system/priv-app/MIUIGalleryEditor/lib/arm64,$(TARGET_COPY_OUT_SYSTEM)/priv-app/MIUIGalleryEditor/lib/arm64)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Sysconfig
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/miuicamera-hiddenapi-package-allowlist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuicamera-hiddenapi-package-allowlist.xml
