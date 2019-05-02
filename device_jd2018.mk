$(call inherit-product, device/phh/treble/base-pre.mk)
include build/make/target/product/treble_common.mk
$(call inherit-product, vendor/vndk/vndk.mk)
$(call inherit-product, vendor/lenovo/jd2018/jd2018.mk)
$(call inherit-product, device/phh/treble/base.mk)
$(call inherit-product, device/phh/treble/gapps.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := device_jd2018
PRODUCT_DEVICE := jd2018
PRODUCT_BRAND := Lenovo
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_MODEL := Lenovo L78011

PRODUCT_PACKAGES +=  phh-su me.phh.superuser

# Include layers
DEVICE_PACKAGE_OVERLAYS += device/lenovo/jd2018/overlays

# Define screen size for prebuilt apps
PRODUCT_AAPT_CONFIG := xlarge
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_AAPT_PREBUILT_DPI := hdpi mdpi

# Screen size for boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Copying audio files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/a2dp_audio_policy_configuration.xml:system/etc/a2dp_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_effects.xml:system/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio/audio_platform_info_tavil.xml:system/etc/audio_platform_info_tavil.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:system/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/audio/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    $(LOCAL_PATH)/configs/audio/r_submix_audio_policy_configuration.xml:system/etc/r_submix_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/usb_audio_policy_configuration.xml:system/etc/usb_audio_policy_configuration.xml \
    $(LOCAL_PATH)/bootanimation.zip:system/media/bootanimation.zip

