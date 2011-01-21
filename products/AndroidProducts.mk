#PRODUCT_MAKEFILES := \
#    $(LOCAL_DIR)/evervolv_inc.mk \
#    $(LOCAL_DIR)/evervolv_supersonic.mk \
#    $(LOCAL_DIR)/evervolv_heroc.mk \
#    $(LOCAL_DIR)/evervolv_glacier.mk

#Temporary work around... * cocide
ifeq ($(TARGET_PRODUCT),evervolv_inc)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/evervolv_inc.mk
else ifeq ($(TARGET_PRODUCT),evervolv_supersonic)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/evervolv_supersonic.mk
else ifeq ($(TARGET_PRODUCT),evervolv_speedy)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/evervolv_speedy.mk
else ifeq ($(TARGET_PRODUCT),evervolv_heroc)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/evervolv_heroc.mk
else ifeq ($(TARGET_PRODUCT),evervolv_glacier)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/evervolv_glacier.mk
endif
