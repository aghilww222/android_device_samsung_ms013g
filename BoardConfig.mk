# Copyright (C) 2014-2016 The CyanogenMod Project
# Copyright (C) 2017-2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common ms01
include device/samsung/ms01-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/ms013g


# Kernel
TARGET_KERNEL_CONFIG := lineage_ms013g_defconfig

# Radio/RIL
include $(COMMON_PATH)/radio/dual/board.mk

# inherit from the proprietary version
include vendor/samsung/ms013g/BoardConfigVendor.mk

BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/minimal_sepolicy
SELINUX_IGNORE_NEVERALLOWS := true

#TARGET_PREBUILT_KERNEL := device/samsung/ms013g/prebuilt/zImage
