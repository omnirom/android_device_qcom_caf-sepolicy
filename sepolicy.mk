BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/qcom/sepolicy/generic/public \
    device/qcom/sepolicy/qva/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/qcom/sepolicy/generic/private \
    device/qcom/sepolicy/qva/private


ifeq (,$(filter sdm845 sdm710, $(TARGET_BOARD_PLATFORM)))
    BOARD_SEPOLICY_DIRS += \
       device/qcom/sepolicy/generic/vendor/common \
       device/qcom/sepolicy/qva/vendor/common/sysmonapp \
       device/qcom/sepolicy/qva/vendor/ssg \
       device/qcom/sepolicy/generic/vendor/timeservice \
       device/qcom/sepolicy/qva/vendor/common \
       device/qcom/sepolicy/generic/vendor/$(TARGET_BOARD_PLATFORM) \
       device/qcom/sepolicy/qva/vendor/$(TARGET_BOARD_PLATFORM)
endif

ifneq (,$(filter sdm845 sdm710, $(TARGET_BOARD_PLATFORM)))
    BOARD_SEPOLICY_DIRS += \
                 device/qcom/sepolicy/legacy/vendor/common/sysmonapp \
                 device/qcom/sepolicy/legacy/vendor/ssg \
                 device/qcom/sepolicy/legacy/vendor/timeservice \
                 device/qcom/sepolicy/legacy/vendor/common \
                 device/qcom/sepolicy/legacy/vendor/$(TARGET_SEPOLICY_DIR)
endif
