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

ifeq (metallium_jactivelte,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := metallium_xhdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/metallium/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/metallium/main.mk

# Inherit device configuration
$(call inherit-product, device/samsung/jactivelte/full_jactivelte.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := jactivelte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I9295

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jactivelte BUILD_ID=KTU84Q BUILD_FINGERPRINT="samsung/jactivelte/jactivelte:4.4.2/KTU84Q/I9295XXUCNE5:user/release-keys" PRIVATE_BUILD_DESC="jactivelte-user 4.4.2 KTU84Q I9295XXUCNE5 release-keys"

endif
