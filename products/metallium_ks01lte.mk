# Copyright (C) 2015 The CyanogenMod Project
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

# Check for target product
ifeq (metallium_ks01lte,$(TARGET_PRODUCT))

$(call inherit-product, device/samsung/ks01lte/full_ks01lte.mk)

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/metallium/configs/telephony.mk)

# Include MerkMod common configuration
include vendor/metallium/main.mk

PRODUCT_NAME := metallium_ks01lte
BOARD_VENDOR := samsung
PRODUCT_DEVICE := ks01lte

PRODUCT_GMS_CLIENTID_BASE := android-samsung

TARGET_VENDOR_PRODUCT_NAME := SAMSUNG
TARGET_VENDOR_DEVICE_NAME := SAMSUNG
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=KS01LTE PRODUCT_NAME=KS01LTE

endif
