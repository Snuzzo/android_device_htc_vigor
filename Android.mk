ifneq ($(filter vigor,$(TARGET_DEVICE)),)
    include $(all-subdir-makefiles)
endif

LOCAL_MODULE_TAGS := optional
