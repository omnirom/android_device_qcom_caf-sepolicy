# Board specific SELinux policy variable definitions
BOARD_SEPOLICY_DIRS += \
    device/qcom/sepolicy \
    device/qcom/sepolicy/ssg \
    device/qcom/sepolicy/common \
    device/qcom/sepolicy/$(TARGET_BOARD_PLATFORM)

BOARD_PLAT_PUBLIC_SEPOLICY_DIR := device/qcom/sepolicy/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR := device/qcom/sepolicy/private
