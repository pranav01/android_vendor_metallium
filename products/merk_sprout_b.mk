# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := merk_hdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/merk/configs/telephony.mk)

# Include Merk common configuration
include vendor/merk/main.mk

$(call inherit-product, device/google/sprout_b/sprout_b.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=5.1/LMY47O/1783956:user/release-keys PRIVATE_BUILD_DESC="sprout-user 5.1 LMY47O 1783956 release-keys"

PRODUCT_NAME := merk_sprout_b
PRODUCT_DEVICE :=sprout_b
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google
PRODUCT_MODEL := A1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="sprout_b"
