# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.mt6735:root/fstab.mt6735 \
    $(LOCAL_PATH)/rootdir/ueventd.mt6735.rc:root/ueventd.mt6735.rc

    #$(LOCAL_PATH)/rootdir/factory_init.rc:root/factory_init.rc \
    $(LOCAL_PATH)/rootdir/factory_init.usb.rc:root/factory_init.usb.rc \
    $(LOCAL_PATH)/rootdir/init.recovery.mt6735.rc:root/init.recovery.mt6735.rc \
    $(LOCAL_PATH)/rootdir/meta_init.modem.rc:root/meta_init.modem.rc \
    $(LOCAL_PATH)/rootdir/factory_init.project.rc:root/factory_init.project.rc \
    $(LOCAL_PATH)/rootdir/meta_init.rc:root/meta_init.rc \
    $(LOCAL_PATH)/rootdir/meta_init.project.rc:root/meta_init.project.rc \
    
