#
# Copyright (C) 2011 The CyanogenMod Project
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
#

$(LOCAL_PATH)=device/sony/C1905

# Inherit the proprietary counterpart
$(call inherit-product-if-exists, vendor/sony/C1905/C1905-vendor.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Device specific part for two-stage boot
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/bootrec-device:recovery/bootrec-device
	
# Configuration scripts
PRODUCT_COPY_FILES += \
    device/sony/C1905/prebuilt/logo.rle:root/logo.rle
	
# USB function switching
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/init.qcom.usb.rc:root/init.qcom.usb.rc
	
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/fstab.qcom:root/fstab.qcom

