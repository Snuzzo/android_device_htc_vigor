$(call inherit-product, vendor/pete/products/common.mk)

# Bootanimation
$(call inherit-product, device/htc/vigor/vigor.mk)

# Device naming
PRODUCT_NAME := pete_vigor
PRODUCT_DEVICE := vigor
PRODUCT_MODEL := ADR6425LVW
PRODUCT_MANUFACTURER := HTC
PRODUCT_BRAND := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vigor BUILD_ID=IML74K BUILD_FINGERPRINT="verizon_wwe/htc_vigor/vigor:4.0.4/IMM76D/372320.10:user/release-keys" PRIVATE_BUILD_DESC="3.14.605.10 CL372320 release-keys"

# Release name
PRODUCT_RELEASE_NAME := Vigor
-include vendor/pete/products/common_versions.mk

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/pete/proprietary/tuna/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/pete/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/pete/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/pete/proprietary/common/app/Microbes.apk:system/app/Microbes.apk \
    vendor/pete/proprietary/common/app/Wallet.apk:system/app/Wallet.apk \
    vendor/pete/proprietary/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so

# Inherit media effect blobs
-include vendor/pete/products/common_media_effects.mk

# Inherit Face lock security blobs
-include vendor/pete/products/common_facelock.mk

# Inherit drm blobs
-include vendor/pete/products/common_drm_phone.mk
