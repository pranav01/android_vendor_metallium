# Copyright (C) 2015 MerkMod Project
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

ifeq (merk_nicki,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := merk_hdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/merk/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/merk/main.mk

# Inherit device configuration
$(call inherit-product, device/sony/nicki/nicki.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nicki
PRODUCT_NAME := merk_nicki
PRODUCT_BRAND := Sony
PRODUCT_MODEL := nicki
PRODUCT_MANUFACTURER := Sony
PRODUCT_CHARACTERISTICS := phone

TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Release name
PRODUCT_RELEASE_NAME := 'Xperia M'

endif
