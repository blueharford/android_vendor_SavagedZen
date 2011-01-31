$(call inherit-product, device/htc/vision/vision.mk)
$(call inherit-product, vendor/evervolv/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/evervolv/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := evervolv_vision
PRODUCT_BRAND := tmobile
PRODUCT_DEVICE := vision
PRODUCT_MODEL := HTC Vision
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vision BUILD_ID=FRF91 BUILD_DISPLAY_ID=GRH78C BUILD_FINGERPRINT=tmobile/htc_vision/vision/vision:2.2/FRF91/277427:user/release-keys PRIVATE_BUILD_DESC="1.22.531.8 CL277427 release-keys"

# Set up the code name & Build version
PRODUCT_CODENAME = Evervolv-Artisx

BUILD_VERSION := 1.0.1a1

#BUILD_VERSION := v1.0.1a1-$(shell date +%m%d%Y)-NIGHTLY

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=$(PRODUCT_CODENAME)-$(BUILD_VERSION)

PRODUCT_MOTD :="\nThis is a test MOTD for the HTC G2. This will be followed by a complete install message for anyone flashing an evervolv rom."

# Extra speedy overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/vision

# Copy speedy specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
   vendor/evervolv/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip