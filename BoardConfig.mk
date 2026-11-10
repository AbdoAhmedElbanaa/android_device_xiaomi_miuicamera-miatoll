#
# Copyright (C) 2023-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the proprietary version
include vendor/xiaomi/miuicamera-miatoll/BoardConfigVendor.mk

MIUICAMERA_PATH := device/xiaomi/miuicamera-miatoll

# Malloc
MALLOC_SVELTE := true

# Properties
TARGET_SYSTEM_PROP += $(MIUICAMERA_PATH)/system.prop

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(MIUICAMERA_PATH)/sepolicy/vendor

BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
