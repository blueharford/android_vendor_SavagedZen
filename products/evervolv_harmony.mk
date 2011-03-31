$(call inherit-product, device/nvidia/harmony/device_harmony.mk)
$(call inherit-product, vendor/evervolv/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := evervolv_harmony
PRODUCT_BRAND := nvidia
PRODUCT_DEVICE := harmony
PRODUCT_MODEL := GTablet
PRODUCT_MANUFACTURER := malata
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=harmony BUILD_ID=GRI40 BUILD_DISPLAY_ID=GRI40 BUILD_FINGERPRINT=google/passion/passion:2.3.3/GRI40/102588:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.3 GRI40 102588 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Ferus

BUILD_VERSION := 1.0.2a1

#BUILD_VERSION := v1.0.2a1$(shell date +%m%d%Y)-NIGHTLY

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=Evervolv-$(PRODUCT_CODENAME)-$(BUILD_VERSION)

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your Viewsonic G Tablet\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

# Extra Supersonic overlay
#
# TODO - not needed right now, but a must have.
#PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/harmony

# Add the Torch app
#PRODUCT_PACKAGES += Torch


# Copy hdpi specific prebuilt files
#
#TODO - MAKE MDPI!
#PRODUCT_COPY_FILES +=  \
#   vendor/evervolv/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip