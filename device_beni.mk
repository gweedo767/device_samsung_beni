# Copyright (C) 2010 The Android Open Source Project
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


# This file is the device-specific product definition file for
# crespo. It lists all the overlays, files, modules and properties
# that are specific to this hardware: i.e. those are device-specific
# drivers, configuration files, settings, etc...

# Note that crespo is not a fully open device. Some of the drivers
# aren't publicly available in all circumstances, which means that some
# of the hardware capabilities aren't present in builds where those
# drivers aren't available. Such cases are handled by having this file
# separated into two halves: this half here contains the parts that
# are available to everyone, while another half in the vendor/ hierarchy
# augments that set with the parts that are only relevant when all the
# associated drivers are available. Aspects that are irrelevant but
# harmless in no-driver builds should be kept here for simplicity and
# transparency. There are two variants of the half that deals with
# the unavailable drivers: one is directly checked into the unreleased
# vendor tree and is used by engineers who have access to it. The other
# is generated by setup-makefile.sh in the same directory as this files,
# and is used by people who have access to binary versions of the drivers
# but not to the original vendor tree. Be sure to update both.


# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.
$(call inherit-product, build/target/product/full_base.mk)


# HAL libs and other system binaries
PRODUCT_PACKAGES += \
    brcm_patchram_plus \
    bdaddr_read \
    copybit.beni \
    gralloc.beni \
    libOmxCore \
    libOmxVidEnc \
    rzscontrol \
    dexpreopt \
    screencap


# Filesystem management tools
PRODUCT_PACKAGES += \
    dump_image \
    e2fsck \
    erase_image \
    flash_image \
    make_ext4fs \
    setup_fs



PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_beni
PRODUCT_DEVICE := beni

# Modules
PRODUCT_COPY_FILES += \
    device/samsung/beni/recovery/modules/fsr.ko:root/lib/modules/fsr.ko \
    device/samsung/beni/recovery/modules/fsr_stl.ko:root/lib/modules/fsr_stl.ko \
    device/samsung/beni/recovery/modules/sec_param.ko:root/lib/modules/sec_param.ko \
    device/samsung/beni/ramdisk/ueventd.gt-s5670.rc:root/ueventd.gt-s5670.rc \
    device/samsung/beni/ramdisk/BENI.rle:root/BENI.rle \
    device/samsung/beni/ramdisk/init.gt-s5670.rc:root/init.gt-s5670.rc



# ADB
PRODUCT_PROPERTY_OVERRIDES += \
    persist.service.adb.enable=1

